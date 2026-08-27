# CHECKS — run before every draft, show the result

Built from Atira's corrections on 2026-08-22. Every line here is something that was
already wrong once. Open this file for each ticket. Output the gate block, then draft.

## The gate block — print this for every ticket, above the draft

```
GATE  [scenario]
Have:      ...
Missing:   ...
Verdict:   ACT / COLLECT
Terms:     [which terms this reply must state]
Giveaway:  none | free part | free reship | refund | credit | discount   <-- flag if not "none"
```

`COLLECT` means the draft asks for what's missing and promises nothing.
`ACT` means every MUST HAVE is satisfied and the draft does the thing.
Never half of each.

---

## WARRANTY CLAIM

**MUST HAVE, all of them, before anything ships**
- [ ] Photo or short video of the problem. Carts: video from the side so the mechanism shows.
- [ ] **Order number.** Not a name, not an email, not "I bought it last July." If they give
      identifying details we look the order up and **confirm it exists** before acting. Until
      it's confirmed, the claim is COLLECT.
- [ ] Confirmed current shipping address, asked for in this reply.
- [ ] Whole stroller replacement only: photo of the harness straps cut off. Never waivable.

**MUST NOT**
- Say "that's everything I needed" when the order is not yet found.
- Skip troubleshooting on something that reads like a known fix.
- Assume a defect. Warranty is manufacturing defects only, judged on the evidence and on
  arrival condition. Age matters: months of normal use is not out-of-the-box.
- Give front-wheel mechanism advice on a Stability Shopper. The caster lock is a Personal
  Shopper feature and does not transfer.

**IF THE ORDER CANNOT BE FOUND AND THE PART IS SMALL** offer the $3 shipping invoice.
**IF SECONDHAND OR BOUGHT LOCALLY** warranty does not transfer. Say so, offer the paid path.

**GIVEAWAY: yes.** Any free part or unit is flagged.

---

## RETURN / REFUND

**MUST HAVE**
- [ ] **Delivered date**, read off the fulfillment record's delivered timestamp, NOT the
      ship date. Window is 30 days from delivery.
- [ ] Inside the window. Hard, even if we were the ones waiting on their answer.
- [ ] Original box. No box is an automatic no. Plastic wrap and foam do not matter.
- [ ] Tags on, tested indoors only, reason given.

**MUST SAY, every time, whether or not they've been told before**
- [ ] Shipping is deducted both ways.
- [ ] The eligible refund amount, written `$___`.
- [ ] "Once we receive the item back you will be refunded."
- [ ] Label comes from a third-party sender, check spam.

**MUST NOT**
- Offer keep-it-and-refund. Every refunded item comes back.
- Omit the amount because I don't have it. It is a blank, not a flag.
- Make them re-confirm conditions they already stated unprompted. Collapse to one message,
  but carry the terms into it.

**PAST WINDOW:** $40 off a Beach Cart, no exchange.
**CLOSING:** Take care + assist line once the label and amount are sent.
**GIVEAWAY: yes** if anything beyond the standard shipping-deducted refund.

---

## MISSING ITEM

**MUST HAVE**
- [ ] The order line proving it was purchased.
- [ ] Their confirmation that it is not in the packaging.

**MUST NOT**
- Concede it is missing. **We are usually not missing things.**
- Lead with a free replacement. Offer nothing until they answer.

**SHAPE, from macro 262668:** ask them to confirm it isn't in the packaging **as a favour**,
normalise by blaming shipping and the object, never the person. Applies to every item, not
just the cup holder. Carts ship with wheels packed loose, so a wheel in the box padding is
exactly what gets missed.

**CLOSING:** Talk soon. **GIVEAWAY: not yet.**

---

## DAMAGED IN TRANSIT

**MUST HAVE**
- [ ] Photos or short video. Mandatory, no exceptions.
- [ ] Order number and confirmed address.
- [ ] Damaged box with undamaged product: they open and confirm first, no remedy yet.

**LADDER, in order:** self-fix, then free replacement part, then whole unit, then partial
refund, then full refund. Past 30 days it is warranty only, so a part, not a refund.
**GIVEAWAY: yes** from the part rung onward.

---

## DELIVERY PROBLEMS — three different cases, three different answers

- [ ] **Delivered to the address they entered, not received.** No reship, no refund. They open
      the case with the carrier. Take care. GIVEAWAY: none.
- [ ] **Stalled, lost, or never scanned.** We reship free, or refund if they'd rather.
      GIVEAWAY: yes.
- [ ] **Carrier never attempted, returning to sender.** Ours to fix. Reship free, switching
      carrier is fine if they ask. GIVEAWAY: yes.

**MUST HAVE before any reship:** the carrier and status read off the order, and their
**confirmed shipping address asked for in this reply**. Name the carrier the order shows,
never from memory.

---

## COMPATIBILITY / PRODUCT QUESTION

**MUST HAVE**
- [ ] Which generation they own, from the order data. Frame colour only works on recent
      orders. If it can't be settled, ask the one identifying question.
- [ ] The fact checked in the Playbook or on the live page. Not recalled.

**WHEELS, the ones that keep going wrong**
- Front wheels are the swivelling casters. Stair and beach wheels are **rear pairs**.
  Only the all-terrain 4-pack changes the fronts. A front-wheel complaint is never solved
  by stair or beach wheels.
- Wheels come off with a **silver tab**, pressed and held. Not a button.
- "v2" on the Baby site means the Double/Baby+ v2. Those wheels are Baby-site only.
- V1 has no stair option at all. Clearance stair wheels are Original Shopper and Beach Cart only.
- Personal Shopper has no upgraded set. Clearance is leftover stock, not an upgrade. Say so.

**MUST NOT**
- Say something doesn't exist because a page fetch didn't show it. Fetches miss embedded video.
- Send `personal-shopper-assembly` to a Stability Shopper owner. It's a discontinued product.
- Attach a link because it is adjacent to the topic. Link what they asked about, or nothing.

---

## DISCOUNT / UPGRADE / CODE

**MUST HAVE**
- [ ] Which cart they own, if the offer depends on it.
- [ ] Their confirmation before a code is created.

**MUST SAY**
- [ ] The code itself, written `___`. Not "I'll send it shortly."
- [ ] **Links to everything they can buy.** "How do I order" is answered with URLs.
- [ ] Codes never stack.

**THE TRAP:** the $40 upgrade does **not** stack with the Special page's automatic $30.
Send upgrade customers to `/products/strolee-stability-shopper`, not the Special.

**STANDING AMOUNTS:** $30 goodwill, $40 V1 upgrade. Anything above is Atira's call for that
ticket only and never gets written into the Playbook as policy.
**GIVEAWAY: yes.**

---

## RESTOCK / NOT LAUNCHED

- No dates. "We'll announce it by email." Never a personal notification promise.
- Don't contradict a date already given to that person. Check the thread first.
- Nothing to draft if the event hasn't happened and we've already told them.

---

## EVERY TICKET, NO EXCEPTIONS

- [ ] **Ticket is still `open`.** Check the status field on the fetch. Closed = stop, no
      research, no draft. Re-pull the view each batch; Atira closes tickets while you work.
      Exception: closed with an inbound message newer than `closed_datetime` is a live ticket.
- [ ] Read **every message in this thread**, oldest first. Never the tail.
- [ ] Nothing in the draft contradicts a reply we already sent to this person.
- [ ] `Ask Shad` tagged: leave it, never close, don't draft over the question.
- [ ] `Notify when back` tagged: **skip it.** Same handling as `Ask Shad` and `Call Shad`.
      List it, don't draft it, don't close it. *(Atira, 2026-08-22.)*
- [ ] TikTok Shop relay sender: close, answered inside TikTok.
- [ ] Waiting on an action Atira can take today: draft it as done.
- [ ] Waiting on an event that hasn't happened: no draft.
- [ ] Terms always, their own order data never.
- [ ] Don't tell a mistaken customer they're right.
- [ ] Lead with yes when they're ready to buy.
- [ ] "love your Strolee" before it ships, "loving" after.
- [ ] Correct opener, correct closing, assist line above every Take care, full sign-off.
