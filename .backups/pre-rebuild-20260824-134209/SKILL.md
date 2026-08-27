---
name: draft-replies
description: Read Gorgias tickets and draft customer replies following the Strolee SOP. Use when Atira wants support replies drafted for the Strolee inbox. Trigger phrases include "draft replies", "go through the inbox", "check the tickets", "draft responses", "run through the emails", "check Gorgias".
user_invocable: true
---

# Draft Strolee Support Replies

Follow these steps in order. Do not draft until Step 5.

Two rules govern everything below:
- **Think before you research.** Most tickets are already answered in the Playbook. Research is for what the Playbook doesn't cover.
- **Never send anything.** Draft in chat. Atira sends.

## Step 1: Load your rules — two files, that's it

Read `CLAUDE.md` (voice) and `PLAYBOOK.md` (facts, routing, decision paths) from the project root.

**Do not bulk-load the memory files.** They are the deep tier: the *why* behind past corrections. Open one only when you need the reasoning behind a rule, or when Atira questions a rule's origin. Everything you need to draft is in the two files above.

## Step 2: Pull and triage

`list_tickets` for open tickets (10 by default, or however many Atira asked for).

**Pull OLDEST FIRST.** Not newest. The oldest open tickets are the ones rotting, and they're the
ones a customer has to chase us about. Newest-first buries them.

**Gorgias ignores `order_by` when you pass a `view_id`** — the view's own sort wins, and every
Strolee view is set to `last_message_datetime desc`, which is the exact opposite of what you want.
So for a view, **fetch the whole thing with `limit: 100` in one call and sort by
`created_datetime` yourself.** These views run 15-40 tickets, so one call gets all of them and you
see the true age order. Without a view, `order_by: "created_datetime:asc"` works normally.

**Skip anything tagged `Call Shad`, `Ask Shad`, or `Notify when back`.** *(Atira, 2026-08-22: "You
need to be skipping tickets with these tags.")* Don't draft them, don't research them, don't
recommend closing them. List them at the top by number and subject so Atira can see what's parked
there, and move on.

**Re-pull the view at the start of every batch, not once per session.** Atira works the inbox
while you draft. A list fetched an hour ago contains tickets she has since closed, and researching
and writing those up wastes her time reading dead drafts. *(Atira, 2026-08-22: "Why are you going
through closed tickets.")*

**Check `status` on every `get_ticket` before spending anything on it.** It's in the payload. If it
isn't `open`, stop there: no research, no write-up, no draft. Say it's closed in one line, or drop
it silently if she never asked about it. The one exception is a ticket that is closed but has an
inbound customer message newer than `closed_datetime` — that's an unanswered customer, so treat it
as live and say so.

**Then sort what's left by who owes whom.** On each ticket compare `last_received_message_datetime`
to `last_message_datetime`. If they match, the last word was the customer's and **we owe the
reply** — those come first. If they differ, an agent replied last and the ball is in the
customer's court, so those can wait.

Triage each remaining ticket into a bucket using the Playbook's Part 1 router: **A** no reply ·
**B** known answer · **C** order-specific · **D** judgment · **E** unknown.

Announce the triage in one compact line per ticket before you research anything. Atira can redirect
you before you spend anything.

## Step 3: Research — only what the bucket calls for

Follow the router's research column. Do not exceed it.

**Read every message in the ticket you are drafting on. All of them, oldest first. No exceptions.**

This is not the same as the cheap prior-ticket scan below. That scan is about *other* tickets and
subjects-only is fine there. Inside the thread you are answering, you read the whole thing.

**Never sample the tail of a long thread.** If `get_ticket` returns too much to read directly, dump
every message to a file and read them all from there. Do not print "the last N messages" to save
context. The reply we already sent, the promise we already made, and the date we already quoted are
usually in the middle of a long thread, and those are exactly what a draft must not contradict.

Corrected by Atira 2026-08-22 on a 12-message thread where I read the last five, missed an answer
she had already given the customer four days earlier, and drafted one that contradicted it. Before
drafting on any thread, be able to say: **what have we already told this person, and am I about to
disagree with it?**

**Every ticket, regardless of bucket:** `search_tickets` on the customer's email, read the returned subjects and dates only. Open full messages only for a subject that relates to this ticket, or a ticket still open. This satisfies the always-check-prior-tickets rule at a fraction of the cost.

**Verify claims against data.** Don't take the customer's word on carriers, order details, dates, or what they were told. Cross-check against the Shopify order data on the ticket and prior conversations. If they say UPS but it shipped FedEx, that's a discrepancy Atira needs to see.

**For bucket E (unknown), search before you browse.** In this order:
1. `search_tickets` for the key phrase across the whole ticket history. Thousands of past tickets are the best answer source you have. Read how it was handled before. Take the facts and the approach, never the voice.
2. Gorgias macros (`list_macros` / `get_macro`) if the tickets don't cover it
3. The product page on stroleecarts.com or stroleebaby.com
4. Only flag to Atira if all three come up empty AND it needs her judgment

**Then save it.** Anything you looked up goes into `PLAYBOOK.md` (Part 2 for facts, Part 3 for
decision paths) in this session. That ticket type is bucket B forever after.

**Playbook Part 4 is the open-questions list** — situations the archive answers inconsistently and
only Atira can settle. If a ticket lands on one of them, follow the most recent precedent, draft
the reply, and flag it in your Step 7 "Needs Atira" line.

## Step 4: Reason it through — in your head, not on the page

Work through the seven questions in **Playbook Part 0** before you draft. Separate what they
literally asked from the outcome underneath it, check the data for anything that contradicts what
they said, and name privately where what they want collides with what Strolee can do.

**Do not write this reasoning out for Atira.** She wants the draft and the facts that bear on it,
not the worked steps. (Atira, 2026-08-22: *"I dont understand the ask want facts thing."*) Keep the
thinking internal and let Step 7 carry only what she needs in order to decide.

**Collect everything you need in one message, and never ask for what you already have.**
Ask for *all* of it at once: photo or video, order number, shipping address, whichever apply. But
**check the Gorgias sidebar first** — the Shopify panel usually shows the order number, and the
customer may have already attached what you're about to request. Asking again for something they
already sent reads as not having looked.

**Don't promise the part before they've tried the fix.** When you give a troubleshooting step,
stop there and ask them to try it. "If that doesn't work I'll send you a new one" pre-commits the
shipment and most people will simply take it.

**Closing in one message is where you save Atira the most work.** If your reply asks the customer a question, work out what each possible answer leads to. If you can answer both branches in one reply, do it. "If your frame is black, here's the link. If it's silver, those won't fit yours, and here's what will" turns three tickets into one. Only leave a genuine branch open when the answers lead somewhere truly different.

Then check you can answer yes to all of these before writing:
- [ ] I know what product they have, or it doesn't matter here
- [ ] I have the facts, looked up not guessed
- [ ] I checked prior tickets and used anything relevant
- [ ] I verified their claims against real data
- [ ] I know if this is the first reply or a continuation
- [ ] I know which closing this gets
- [ ] **I read every message in this thread, not just the recent ones**
- [ ] **Nothing in my draft contradicts a reply we already sent, and I checked rather than assumed**
- [ ] **I re-read the Playbook section for this ticket type just now, not earlier in the session**
- [ ] **Every "Needs Atira" is a real judgment call, not something the Playbook already answers**

## Step 4.5: RUN THE CHECKS AND SHOW THE GATE — mandatory, every ticket

Open `CHECKS.md`. Find the scenario. Run its list against what you actually have.

**Print the gate block above every draft:**

```
GATE  [scenario]
Have:      ...
Missing:   ...
Verdict:   ACT / COLLECT
Terms:     [terms this reply must state]
Giveaway:  none | free part | free reship | refund | credit | discount
```

A ticket with anything in `Missing` is **COLLECT**. The draft asks for it and promises nothing.
No half-acting: never "here's your replacement, also what's your order number."

`Giveaway` anything other than `none` is a flag Atira must see before she sends.

This step is not optional and not summarisable. If the gate isn't shown, the draft isn't finished.
Built 2026-08-22 from a day of corrections where the knowledge was already in the files and the
failure was every time that nothing forced me to check my own output before handing it over.

## Step 5: Draft

**Re-open the Playbook section for this ticket type and read it before you write. Every time.**

Not once at the start of the session, not from memory. Open the returns section before a return,
the warranty section before a warranty, the wheels section before a wheel question. The Playbook is
long and you will misremember it, and what you misremember will be the specific step that stops a
round-trip.

Corrected by Atira 2026-08-22 after I omitted the refund amount from a return reply. The rule was
already written down, in the section I'd read hours earlier and was no longer looking at. Her words:
*"Why didn't you add it if its in the playbook? I dont want to have to correct you over and over
again."* At least three corrections that day were things already in the files.

**"Waiting on us" is not a reason to skip the draft. It's usually the reason to write one.**

Separate two things:
- **Waiting on an event that hasn't happened** (a restock landing, a photo existing, a carrier
  moving) — no draft, nothing to say yet.
- **Waiting on an action Atira can take right now** (arrange the order, ship the replacement, send
  the label, issue the refund) — **draft it as done.** "I just arranged for your replacement to be
  sent, you'll get tracking by email as soon as it's on the way." She does the action and sends the
  reply in one pass.

Corrected by Atira 2026-08-22 on a customer asking for tracking, where I wrote "waiting on us to
ship, no draft." Arranging the order was the obvious next step and the draft was the easy half.
Ask what the next action is, assume it happens, and write the message that follows it.

**A flag is not a safe default.** Before writing "Needs Atira," check the Playbook for that
situation. If it has an answer, use it. Flagging something the file already covers is not caution,
it's handing her back the work the file exists to save. Flag only genuine judgment calls, live
business decisions, and facts that exist nowhere you can reach.


Write it applying every rule in CLAUDE.md. Match the register of the approved benchmark reply: lead with reassurance, then the fix, then a real offer to make it right.

## Step 6: Final check — read each line of the draft against this

- [ ] No em dashes
- [ ] No stacked hedging clauses
- [ ] No presuming what the customer thinks, expects, or was doing
- [ ] No know-it-all framing
- [ ] **Never tell someone nothing is wrong.** They've usually already tried. Explain the step, then leave the door open for it genuinely being faulty. "Nothing's wrong with it" is dismissive when they've been at it with their partner for an hour, and it's sometimes just wrong.
- [ ] Duplicate tickets from the same person minutes apart: answer one, note the other as closeable
- [ ] No affirming defects, no apologizing for the product
- [ ] No apologizing for slow service
- [ ] Correct opener (first reply gets "thanks for reaching out," continuations skip it)
- [ ] Correct closing (Talk soon = we need something back from them · **Take care = the action is complete**, even mid-thread. Sending a label, shipping a part, or issuing a refund finishes it, so it gets Take care, not Talk soon.)
- [ ] **If they've already given you everything you need, act — don't ask again.** No "let me know and I'll send it" when there's nothing left to confirm. Send it, say you sent it.
- [ ] **But check that they actually confirmed it, not that they intend to.** "I feel confident I can repack it" is not "it's in the original box with tags, used indoors only." On returns especially, intent is not confirmation — send the conditions and wait.
- [ ] The assist line appears above every Take care. Use the "loving your Strolee" version if they own one.
- [ ] Full sign-off on both closings: "Atira S" and "The Strolee Team"
- [ ] "Manufacturer," never "supplier"
- [ ] Snap buttons pop OUT, never up
- [ ] Product links included whenever referencing something they can buy
- [ ] Mirror the customer's words for product names, don't correct them to the catalog name
- [ ] Every specific from the ticket is in the draft: links, codes, amounts, dates, tracking and order numbers, commission rates. Never a generic summary when the real value is sitting there.
- [ ] Nothing mentioned that this customer can't actually use
- [ ] Upgrade offers explain the deal and link the product, but don't create the discount code yet
- [ ] Still warm. Brevity is not the goal, resolution is.

Fix anything that fails before presenting.

## Step 7: Present

Non-customer tickets grouped at the top, one line each, noted as closeable.

Then for each real ticket:
1. **Ticket number, customer name, bucket**
2. **What they're asking** — one sentence
3. **What you found** — the context Atira needs, facts only, a few lines. Order number, product, dates, carrier and tracking, prior tickets, and any discrepancy with what the customer said. No reasoning walkthrough.
4. **The draft** — in a blockquote
5. **Needs Atira** — only genuine business decisions or judgment calls

If you're flagging more than one in ten, you're under-researching.

## Step 8: When Atira corrects you

**Never reword, soften, or reinterpret an existing rule. Append only.**

If a correction touches a rule that already exists, add Atira's words underneath it and date them.
Do not rewrite the original in your own words and do not "clarify" it. On 2026-08-22 I softened
"we cannot cover an item under warranty without the order number" into something looser, then
followed my own version and skipped a hard requirement. My inference became policy and came back as
an error. If a rule looks wrong to you, say so to Atira and leave it exactly as it is.

**A correction about a scenario's requirements goes into `CHECKS.md`, not into Playbook prose.**
Prose gets skimmed. Checks get run.



Every correction is permanent, not a one-off fix.

- Correction about **how you work** (a missed step, a bad default, a missing check) → edit **this skill file**, in the relevant step
- Correction about **a fact, product, or policy** → edit **PLAYBOOK.md**
- Correction about **voice** → edit **CLAUDE.md**, and note the reasoning in a memory file if the *why* matters for later

Make the edit **before** you redraft. Being corrected twice for the same kind of mistake means you skipped this step the first time.
