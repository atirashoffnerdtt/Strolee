# Strolee Support System

Everything needed to draft Strolee customer support replies. **The whole system is this folder.**
Copy the folder, and it works on any machine.

```
Strolee/
├── CLAUDE.md                            voice and hard rules, loaded automatically
├── README.md                            this file
├── kb/                                  the knowledge base
│   ├── 00-router.md                     which file answers which kind of ticket
│   ├── 01-links.md                      every link and the contact details
│   ├── <topic>.md                       one file per topic, ten of them
│   ├── 99-open.md                       contradictions nobody has settled yet
│   └── check.sh                         integrity check, run it any time
└── .claude/skills/draft-replies/
    └── SKILL.md                         how to work a ticket, start to finish
```

## Setting it up on a new machine

1. **Copy this whole folder** anywhere. There are no absolute paths inside it, so the location
   doesn't matter and the username doesn't matter.
2. **Open Claude Code in the folder.** `CLAUDE.md` loads automatically and `/draft-replies` becomes
   available because the skill lives inside the project.
3. **Connect Gorgias.** This is the one piece that does *not* travel with the folder — it's an
   account-level MCP connection, not a file. Without it there are no tickets to read. Everything
   else works immediately.
4. **Run the check:**
   ```
   bash kb/check.sh
   ```
   It should print `PASS`. If it doesn't, it names the file and the problem.

Shopify order data arrives attached to Gorgias tickets, so there's nothing separate to connect
for it.

## Using it

Type `/draft-replies`, or just ask for tickets to be drafted. The skill pulls open tickets oldest
first, triages them, researches only what each one needs, prints a gate block, and hands back a
draft per ticket.

**Nothing is ever sent.** Every reply is drafted in chat for Atira to review and send herself.

## The three rules that keep it from rotting

The previous version of this system degraded over about a week. It wasn't the content, it was that
the same rule ended up written in three to ten places and the old copies never got updated. These
three rules exist to stop that, and `check.sh` enforces the first two.

1. **One rule, one home.** If a rule is in two files, one of them is wrong. Corrections go to the
   topic file that owns the rule.
2. **Hard size caps.** `CLAUDE.md` 200 lines, topic files 250. Hitting a cap means consolidate, not
   append.
3. **Corrections edit the rule in place, and Atira's exact words go in that file's `## LOG`.**
   Verbatim, dated. The rule stays single and current; her original wording is never lost to a
   paraphrase.

And one that no script can check: **never re-run a bulk archive sweep.** Mining 118,836 tickets into
one file is what produced the 72KB monolith that broke the last system. Fill gaps one ticket at a
time.

## Every kb topic file has the same six sections

| Section | What goes in it |
|---|---|
| `## GATE` | what must be in hand before acting |
| `## MUST SAY` | terms this reply states every time |
| `## FACTS` | prices, specs, windows, links |
| `## PATHS` | if X then Y |
| `## TRAPS` | mistakes specific to this scenario |
| `## LOG` | Atira's corrections, dated, verbatim |

So a correction always has one destination, and it's obvious which heading it belongs under.

## Measuring whether it's working

Baseline from Gorgias at the time of the last rebuild: **one-touch resolution fell from 63.9%
(Aug 2025) to 43.7% (Aug 2026)**, on roughly 2,000 tickets a month, 3.1 messages per ticket, with
56.6% of tickets coming from repeat customers.

Check one-touch resolution again a couple of weeks after this rebuild. If it hasn't moved, the
rebuild didn't do what it was supposed to.

## If something goes wrong

The previous system is preserved untouched under `.backups/pre-rebuild-<timestamp>/` — the old
`PLAYBOOK.md`, `CHECKS.md`, `CLAUDE.md`, the old skill, and all 52 memory files. Nothing was
deleted. Restoring is a copy back out of that folder.

*Rebuilt 2026-08-24.*
