#!/usr/bin/env bash
# Strolee knowledge-base integrity check.
# Run from anywhere:  bash kb/check.sh
# Verifies the invariants that keep this system from drifting the way the old one did.

cd "$(dirname "$0")/.." || exit 1
fail=0
warn=0
say()  { printf '%s\n' "$*"; }
bad()  { printf '  FAIL  %s\n' "$*"; fail=$((fail+1)); }
soft() { printf '  WARN  %s\n' "$*"; warn=$((warn+1)); }
ok()   { printf '  ok    %s\n' "$*"; }

say ""
say "Strolee KB check"
say "================"

# ---------------------------------------------------------------- 1. structure
say ""
say "1. Files present"
for f in CLAUDE.md kb/00-router.md kb/01-links.md kb/99-open.md \
         .claude/skills/draft-replies/SKILL.md; do
  [ -f "$f" ] && ok "$f" || bad "missing: $f"
done
topics=$(ls kb/*.md 2>/dev/null | grep -vE 'kb/[0-9]' | sed 's|kb/||')
[ -n "$topics" ] && ok "$(echo "$topics" | wc -l | tr -d ' ') topic files" \
                 || bad "no topic files in kb/"

# ------------------------------------------------------------------- 2. size
say ""
say "2. Size caps  (CLAUDE.md 200, topic files 250, router 150)"
n=$(wc -l < CLAUDE.md | tr -d ' ')
[ "$n" -le 200 ] && ok "CLAUDE.md $n" || bad "CLAUDE.md $n lines, cap 200 — consolidate, don't append"
for f in kb/*.md; do
  [ "$(basename "$f")" = "check.sh" ] && continue
  n=$(wc -l < "$f" | tr -d ' ')
  case "$(basename "$f")" in
    00-router.md) cap=150 ;;
    01-links.md|99-open.md) cap=150 ;;
    *) cap=250 ;;
  esac
  [ "$n" -le "$cap" ] && ok "$f $n" || bad "$f $n lines, cap $cap — consolidate, don't append"
done

# --------------------------------------------------------------- 3. headings
say ""
say "3. Topic files carry all six headings"
for f in kb/*.md; do
  base=$(basename "$f")
  case "$base" in [0-9]*|check.sh) continue ;; esac
  miss=""
  for h in GATE "MUST SAY" FACTS PATHS TRAPS LOG; do
    grep -q "^## $h" "$f" || miss="$miss $h"
  done
  [ -z "$miss" ] && ok "$base" || bad "$base missing:$miss"
done

# ------------------------------------------------------------ 4. portability
say ""
say "4. Portability — no absolute paths, moves to any machine"
hits=$(grep -rn '/Users/\|/home/' CLAUDE.md kb/*.md .claude/skills/draft-replies/SKILL.md 2>/dev/null | grep -v '^kb/check.sh')
if [ -z "$hits" ]; then ok "no absolute paths"
else bad "absolute paths found:"; printf '        %s\n' "$hits"; fi
[ -d .claude/skills/draft-replies ] && ok "skill lives inside the project" \
                                    || bad "skill is not in .claude/skills/draft-replies"

# -------------------------------------------------------------- 5. router map
say ""
say "5. Router covers every topic file, and every file it names exists"
for f in kb/*.md; do
  base=$(basename "$f")
  case "$base" in 00-router.md|check.sh) continue ;; esac
  grep -q "$base" kb/00-router.md && ok "router names $base" \
                                  || bad "router does not name $base"
done
for named in $(grep -oE '`[a-z0-9-]+\.md`' kb/00-router.md | tr -d '`' | sort -u); do
  [ -f "kb/$named" ] || bad "router names kb/$named which does not exist"
done

# --------------------------------------------------- 6. one rule, one home
say ""
say "6. One rule, one home  (canaries that drifted before)"
canary() {                       # canary <owner-file> <regex> <label>
  owner="$1"; pat="$2"; label="$3"
  found=$(grep -rlE "$pat" CLAUDE.md kb/*.md .claude/skills/draft-replies/SKILL.md 2>/dev/null \
          | grep -v 'kb/check.sh' | grep -v 'kb/99-open.md' | tr '\n' ' ')
  set -- $found
  if [ "$#" -eq 0 ]; then soft "$label — not found anywhere (expected $owner)"
  elif [ "$#" -eq 1 ] && [ "$1" = "$owner" ]; then ok "$label -> $owner"
  else bad "$label should live only in $owner, found in: $found"; fi
}
canary CLAUDE.md 'Atira S$|Atira S$'                      'sign-off block'
canary CLAUDE.md "thanks for reaching out, and I'll be happy to assist" 'opener'
canary CLAUDE.md 'em dash'                                 'no em dashes'
canary CLAUDE.md "never .{0,2}supplier"                     'manufacturer not supplier'
canary CLAUDE.md "anything we can assist you with in the future" 'assist line'
canary kb/returns.md '30 days from DELIVERY'               '30-day window'
canary kb/returns.md 'no set restocking fee'               'restocking wording'
canary kb/warranty.md '5 years total'                      'warranty extension'
canary kb/wheels.md 'silver tab'                           'wheels release with a tab'
canary kb/discounts.md 'will not stack'                    'Special vs upgrade code'
canary kb/delivery.md 'usually not missing things'         'missing-item posture'
canary kb/00-router.md 'Notify when back'                  'skip tags'

# ------------------------------------------------------------------ verdict
say ""
say "================"
if [ "$fail" -eq 0 ] && [ "$warn" -eq 0 ]; then
  say "PASS — knowledge base is consistent."
elif [ "$fail" -eq 0 ]; then
  say "PASS with $warn warning(s)."
else
  say "$fail problem(s), $warn warning(s). Fix before drafting."
fi
say ""
exit "$fail"
