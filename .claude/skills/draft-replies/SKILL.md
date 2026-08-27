---
name: draft-replies
description: Read Gorgias tickets and draft customer replies following the Strolee SOP. Use when Atira wants support replies drafted for the Strolee inbox. Trigger phrases include "draft replies", "go through the inbox", "check the tickets", "draft responses", "run through the emails", "check Gorgias".
user_invocable: true
---

# Draft Strolee Support Replies

Follow these steps in order. Do not draft until Step 5.

Two rules govern everything below:
- **Think before you research.** Most tickets are already answered in `kb/`. Research is for what
  isn't.
- **Never send anything.** Draft in chat. Atira sends.

## Step 1: Load the knowledge — all of it

Read `CLAUDE.md` and **every file in `kb/`**. All of it, at the start of the session. It is small
enough to hold, and holding all of it is the point: there is no retrieval step to get wrong.

Then run `bash kb/check.sh`. It takes a second and tells you whether the files still hold together.
If it reports a problem, say so before drafting.

## Step 2: Pull and triage

`list_tickets` for open tickets (10 by default, or however many Atira asked for).

**Pull OLDEST FIRST.** The oldest open tickets are the ones rotting, and the ones a customer has to
chase us about. Newest-first buries them.

**Gorgias ignores `order_by` when you pass a `view_id`** — the view's own sort wins, and every
Strolee view is set to `last_message_datetime desc`, the exact opposite of what you want. So for a
view, **fetch the whole thing with `limit: 100` in one call and sort by `created_datetime`
yourself.** These views run 15-40 tickets, so one call gets all of them. Without a view,
`order_by: "created_datetime:asc"` works normally.

**Apply the skip-tag rule in `kb/00-router.md`.** List those tickets at the top by number and
subject so Atira can see what's parked there, and move on.

**Re-pull the view at the start of every batch, not once per session.** Atira works the inbox while
you draft. A list fetched an hour ago contains tickets she has since closed. *(Atira, 2026-08-22:
"Why are you going through closed tickets.")*

**Check `status` on every `get_ticket` before spending anything on it.** If it isn't `open`, stop:
no research, no write-up, no draft. The one exception is a ticket that is closed but has an inbound
customer message newer than `closed_datetime` — that's an unanswered customer, so treat it as live
and say so.

**Then sort what's left by who owes whom.** Compare `last_received_message_datetime` to
`last_message_datetime`. If they match, the last word was the customer's and **we owe the reply** —
those come first.

Triage each remaining ticket into a bucket using `kb/00-router.md`: **A** no reply · **B** known
answer · **C** order-specific · **D** judgment · **E** unknown.

Announce the triage in one compact line per ticket before you research anything. Atira can redirect
you before you spend anything.

## Step 3: Research — only what the bucket calls for

**Read every message in the ticket you are drafting on. All of them, oldest first. No exceptions.**

**Never sample the tail of a long thread.** If `get_ticket` returns too much to read directly, dump
every message to a file and read them all from there. Do not print "the last N messages" to save
context. The reply we already sent, the promise we already made, and the date we already quoted are
usually in the middle, and those are exactly what a draft must not contradict.

Before drafting on any thread, be able to say: **what have we already told this person, and am I
about to disagree with it?**

**Every ticket, regardless of bucket:** `search_tickets` on the customer's email, read the returned
subjects and dates only. Open full messages only for a subject that relates to this ticket, or a
ticket still open. That satisfies the always-check-prior-tickets rule at a fraction of the cost.

**Verify claims against data.** Don't take the customer's word on carriers, order details, dates, or
what they were told. Cross-check against the Shopify order data on the ticket and prior
conversations. If they say UPS but it shipped FedEx, that's a discrepancy Atira needs to see.

**For bucket E (unknown), search before you browse.** In this order:
1. `search_tickets` for the key phrase across the whole ticket history
2. Gorgias macros (`list_macros` / `get_macro`)
3. The product page on stroleecarts.com or stroleebaby.com
4. Only flag to Atira if all three come up empty AND it needs her judgment

**Then save it.** Anything you looked up goes into the owning `kb/` file **in this session**. That
ticket type is bucket B forever after.

**`kb/99-open.md` is the open-questions list.** If a ticket lands on one, follow the most recent
precedent, draft the reply, and flag it in your Step 7 "Needs Atira" line.

## Step 4: Reason it through — in your head, not on the page

Work through this before you draft. **Do not write it out for Atira.** She wants the draft and the
facts that bear on it, not the worked steps.

1. **Have we talked to this person before?** Assume yes.
2. **What did they actually order?** The order data, not what they say.
3. **Which product and generation, and is it still in service?**
4. **What's the real problem under what they wrote?** Separate the **ask** from the **want**. "Does
   the adapter fit my Bravo" is the ask. The want is "can I use my car seat with this stroller."
5. **Is the premise right?** See the table in `kb/00-router.md`. Check privately, never in the draft.
6. **What can Strolee actually do here?** Check the limits table before drafting, not after.
7. **What's the shortest honest path to finished?**

**Collect everything you need in one message, and never ask for what you already have.** Photo or
video, order number, shipping address, whichever apply, all at once. But **check the Gorgias sidebar
first** — the Shopify panel usually shows the order number, and the customer may have already
attached what you're about to request.

**Don't promise the part before they've tried the fix.** "If that doesn't work I'll send you a new
one" pre-commits the shipment and most people will simply take it.

**Closing in one message is where you save Atira the most work.** If your reply asks a question,
work out what each answer leads to and answer both branches where they fit. "If your frame is black,
here's the link. If it's silver, those won't fit yours, and here's what will" turns three tickets
into one.

## Step 4.5: Run the gate — mandatory, every ticket

Open the `kb/` file for this scenario. Run its `## GATE` list against what you actually have.

**Print the gate block above every draft:**

```
GATE  [scenario]
Have:      ...
Missing:   ...
Verdict:   ACT / COLLECT
Terms:     [what this reply must state, from the file's MUST SAY]
Giveaway:  none | free part | free reship | refund | credit | discount
```

A ticket with anything in `Missing` is **COLLECT**. The draft asks for it and promises nothing.
No half-acting: never "here's your replacement, also what's your order number."

`Giveaway` anything other than `none` is a flag Atira must see before she sends.

This step is not optional and not summarisable. If the gate isn't shown, the draft isn't finished.

## Step 5: Draft

**"Waiting on us" is not a reason to skip the draft. It's usually the reason to write one.**

- **Waiting on an event that hasn't happened** (a restock landing, a photo existing, a carrier
  moving) — no draft, nothing to say yet.
- **Waiting on an action Atira can take right now** (arrange the order, ship the replacement, send
  the label, issue the refund) — **draft it as done.** "I just arranged for your replacement to be
  sent, you'll get tracking by email as soon as it's on the way." She does the action and sends the
  reply in one pass.

**Leave `___` for anything only Atira can produce:** a code she creates, the eligible refund amount,
a tracking number, a label link, an order number we can't locate, a date only she knows.
**A missing value is a blank. A giveaway is a flag.**

**A flag is not a safe default.** Before writing "Needs Atira," check whether `kb/` answers it.
Flag only genuine judgment calls, live business decisions, and facts that exist nowhere you can
reach.

Write it applying every rule in `CLAUDE.md`. Lead with reassurance, then the fix, then a real offer
to make it right.

## Step 6: Final check

**Re-open `CLAUDE.md` and read the draft line by line against it.** Every voice rule and every hard
rule lives there, and there is no copy of them here on purpose — a second copy is how the old system
started contradicting itself.

**Then re-open the `kb/` file for this scenario** and confirm the draft satisfies its `## MUST SAY`
and avoids everything in its `## TRAPS`.

Then these, which are about the draft rather than the voice:

- [ ] Every specific from the ticket is in the draft: links, codes, amounts, dates, tracking and
      order numbers, commission rates. Never a generic summary when the real value is sitting there
- [ ] Nothing mentioned that this customer can't actually use
- [ ] Product links included whenever referencing something they can buy
- [ ] If they've given you everything, **act** — don't ask again. But check they **confirmed** it,
      not that they intend to. Intent is not confirmation
- [ ] Duplicate tickets from the same person minutes apart: answer one, note the other as closeable
- [ ] Still warm. Brevity is not the goal, resolution is

Fix anything that fails before presenting.

## Step 7: Present

Non-customer tickets grouped at the top, one line each, noted as closeable.

Then for each real ticket:
1. **Ticket number, customer name, bucket**
2. **What they're asking** — one sentence
3. **What you found** — the context Atira needs, facts only, a few lines. Order number, product,
   dates, carrier and tracking, prior tickets, and any discrepancy with what the customer said.
   No reasoning walkthrough.
4. **The draft** — in a blockquote
5. **Needs Atira** — only genuine business decisions or judgment calls

## Step 8: When Atira corrects you

**Every correction is permanent, not a one-off fix. Make the edit before you redraft.**

| Correction about | Goes in |
|---|---|
| A fact, product, policy or scenario requirement | the owning `kb/` topic file |
| Voice | **Do not edit `CLAUDE.md`.** Surface the correction to Atira and apply it going forward; she owns the voice file and edits it herself when she wants a rule changed. |
| How you work — a missed step, a bad default | **this file** |

**Two things happen for every correction:**
1. **Edit the rule in place.** If the correction contradicts an existing line, that line is
   replaced, not appended to. Two rules on one topic is the failure mode, not the safeguard.
2. **Put Atira's exact words in that file's `## LOG` section**, dated. Verbatim, never paraphrased.

That second part is what makes the first part safe. On 2026-08-22 I softened "we cannot cover an
item under warranty without the order number" into something looser, then followed my own version
and skipped a hard requirement. Keeping her words verbatim in LOG means a rewrite can always be
checked against what she actually said.

**Never soften a hard requirement**, even in place. The order-number requirement, the
cut-harness-strap photo, the original-box rule, the 30-day window. If one looks wrong, say so to
Atira and leave it exactly as it is.

**One rule, one home.** Before adding anything, grep for it. If the rule already lives somewhere,
edit it there rather than writing a second copy. Run `bash kb/check.sh` after editing.

**At the end of a session, ask what changed.** Anything Atira corrected in chat that isn't in a file
yet is a correction that will come back. No script catches that one.

## LOG
- **2026-08-25, Atira:** *"Don't edit the voice files"* — after I added a "warm but don't play into
  the framing" rule to `CLAUDE.md` in response to her Bronwyn feedback. `CLAUDE.md` is hers. When
  she gives voice feedback, apply it to the current draft and note it in the presentation for her,
  don't rewrite the voice file. Kb topic files and this skill file are still fair game to edit in
  place.
