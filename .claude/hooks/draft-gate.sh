#!/usr/bin/env bash
# draft-gate.sh — Stop hook that enforces the Strolee drafting rules on Claude's turn.
#
# Fails the turn (exit 2 with a message) if the assistant's last output contains a
# customer draft but skips the mandatory checks:
#   1. Every draft (block quote starting with "> Hi ") must be preceded by a GATE
#      block containing Have: / Missing: / Verdict: / Terms: / Giveaway:
#   2. Any specific claim about a customer's cart generation, order, or account
#      (V1/V2/Original/Personal Shopper/Baby+/Double, order #, purchase date, "your
#      order") must be preceded IN THE SAME TURN by an mcp__*__get_ticket tool_use.
#   3. Every draft must end with the two-line sign-off "Atira S" / "The Strolee Team".
#
# Reads the Stop hook JSON on stdin and finds the transcript_path.

set -euo pipefail

input=$(cat)
transcript_path=$(printf '%s' "$input" | /usr/bin/python3 -c 'import sys,json;print(json.load(sys.stdin).get("transcript_path",""))' 2>/dev/null || true)

if [ -z "$transcript_path" ] || [ ! -f "$transcript_path" ]; then
  exit 0
fi

# Extract the last assistant message text + the tool_uses in the same turn.
# A "turn" here = from the last user message onward.
/usr/bin/python3 <<PYEOF
import json, sys, re

path = "$transcript_path"
with open(path) as f:
    lines = [json.loads(l) for l in f if l.strip()]

# Walk back to the last user message and collect assistant events after it.
last_user_idx = -1
for i in range(len(lines) - 1, -1, -1):
    if lines[i].get("type") == "user":
        last_user_idx = i
        break

turn = lines[last_user_idx + 1:] if last_user_idx >= 0 else lines

assistant_text = []
tool_uses = []
for evt in turn:
    if evt.get("type") != "assistant":
        continue
    msg = evt.get("message", {}) or {}
    for block in msg.get("content", []) or []:
        btype = block.get("type")
        if btype == "text":
            assistant_text.append(block.get("text", ""))
        elif btype == "tool_use":
            tool_uses.append(block.get("name", ""))

text = "\n".join(assistant_text)
if not text:
    sys.exit(0)

problems = []

# Rule 1: draft block quote (> Hi ...) must have a GATE block earlier in the same message.
draft_positions = [m.start() for m in re.finditer(r'(?m)^>\s*Hi\s', text)]
gate_positions = [m.start() for m in re.finditer(r'(?m)^\s*GATE\b', text)]
for dp in draft_positions:
    if not any(gp < dp for gp in gate_positions):
        problems.append(
            "A draft block was posted with no GATE block above it. "
            "Every draft needs: GATE  [scenario] / Have: / Missing: / Verdict: / Terms: / Giveaway:"
        )
        break

# Rule 1b: if there IS a GATE somewhere, it must have all five required fields.
if gate_positions:
    for req in ("Have:", "Missing:", "Verdict:", "Terms:", "Giveaway:"):
        if req not in text:
            problems.append(f"GATE block is missing the '{req}' field.")

# Rule 2: cart-generation / order-specific claims in a draft require a get_ticket tool call this turn.
called_get_ticket = any("get_ticket" in name for name in tool_uses)
draft_bodies = re.findall(r'(?ms)^(>.*?)(?=\n[^>]|\Z)', text)
combined_drafts = "\n".join(draft_bodies)
specific_claim_patterns = [
    r'\bV1\b', r'\bV2\b', r'\bOriginal Shopper\b', r'\bPersonal Shopper\b',
    r'\bBaby\+\b', r'\bDouble\b', r'\border\s*#', r'\byour order\b',
    r'\bpurchased in\b', r'\bpre-?order\b', r'\bordered on\b',
]
hits = [p for p in specific_claim_patterns if re.search(p, combined_drafts, re.I)]
if hits and not called_get_ticket:
    problems.append(
        "Draft makes a claim about a specific customer's cart generation, model, or order "
        f"(matched: {', '.join(hits)}) but no get_ticket call was made in this turn. "
        "Pull the order data before asserting what they own or ordered."
    )

# Rule 3: every draft must end with the two-line sign-off.
for body in draft_bodies:
    if re.search(r'(?m)^>\s*Talk soon,\s*$', body) or re.search(r'(?m)^>\s*Take care,\s*$', body):
        if not (re.search(r'(?m)^>\s*Atira S\s*$', body) and re.search(r'(?m)^>\s*The Strolee Team\s*$', body)):
            problems.append(
                "A draft is missing the two-line sign-off. It must end with "
                "'Atira S' and 'The Strolee Team' on separate lines."
            )
            break

if problems:
    msg = "DRAFT GATE HOOK FAILED. Fix these before ending the turn:\n- " + "\n- ".join(problems)
    print(msg, file=sys.stderr)
    sys.exit(2)

sys.exit(0)
PYEOF
