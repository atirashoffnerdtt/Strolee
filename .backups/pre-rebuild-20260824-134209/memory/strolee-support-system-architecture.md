---
name: strolee-support-system-architecture
description: "How the Strolee support system is structured — PLAYBOOK.md is the always-loaded knowledge tier, memory files are the deep tier, do not bulk-load them"
metadata:
  type: project
---

As of 2026-08-21 the Strolee support system runs on three files, not on bulk-loading memory.

**Always loaded when drafting:**
- `/Users/atirashoffner/Strolee/CLAUDE.md` — voice rules
- `/Users/atirashoffner/Strolee/PLAYBOOK.md` — ticket router, product facts, decision paths

**Deep tier, opened one at a time only when needed:** the 38 memory files in this directory. They hold the *why* behind past corrections. The old `/draft-replies` skill bulk-loaded all of them (~17k tokens before reading a single ticket). It no longer does, and it should not be changed back.

**Where corrections go now:**
- How I work → the skill file `~/.claude/skills/draft-replies/SKILL.md`
- A fact, product, or policy → `PLAYBOOK.md`
- Voice → `CLAUDE.md`
- The reasoning behind a correction, when it matters later → a memory file here

**Retrieval over past tickets:** Gorgias `search_tickets` is the retrieval layer (Elasticsearch full-text over every ticket). No vector DB. Anything retrieved from it gets written into PLAYBOOK.md so it's never retrieved twice.

**The archive was mined on 2026-08-21.** Eight parallel agents distilled 118,836 tickets (73,079 non-spam, Feb 2022 to Aug 2026) into PLAYBOOK.md across order changes, refunds/returns, delivery, warranty, legacy products, usage, discounts, and wholesale. Do not re-run this sweep. Fill gaps incrementally per ticket instead.

**PLAYBOOK.md Part 4 holds 23 open questions** — real contradictions where the archive answers the same situation differently. Only Atira can settle them. Follow the most recent precedent and flag the ticket until she does.

**Baseline at mining time:** one-touch resolution had fallen from 63.9% (Aug 2025) to 43.7% (Aug 2026); ~2,000 tickets/month; 3.1 messages per ticket; 56.6% of tickets come from repeat customers.

**Archive warning:** past replies contain answers that break current rules (promising gate check is free, "resell it on Facebook Marketplace"). Mine for facts, never for voice, never assume a past reply was right.

**Why:** Atira asked for a system that reasons through each ticket without burning tokens. The cost was in loading everything up front and researching every ticket at full depth regardless of need. See [[feedback-follow-skill-steps]], [[feedback-save-as-you-go]].
