# Discounts, codes, promotions, HSA/FSA and restocks

## GATE
- [ ] Which cart do they own, if the offer depends on it.
- [ ] **Check `total_discounts` on their order before creating anything.** The discount they're
      asking for may already have come off.
- [ ] Their confirmation before a code is actually created.

**GIVEAWAY: yes.** Any code, credit or price match gets flagged.

## MUST SAY
- [ ] **The code itself, written `___`.** Not "I'll send it shortly." A holding message is an extra
      ticket that buys nothing.
- [ ] **Links to everything they can buy.** "How do I order" is answered with URLs.
- [ ] **Codes never stack.** One discount per order.

## FACTS

**When a customer is ready to buy, lead with yes.** Answer the compatibility question, name the
offer, offer to set the code up. Don't volunteer the shipping threshold, don't do the price
arithmetic for them, don't front-load a small no into a sale. Atira's version, 2026-08-22, in full:

> Yes, your shopping bags, cooler bags, rain cover and organizer all work on the stability cart! We
> do have upgrade offer is $40 off, and you keep the cart you have! And we have black in stock! If
> you'd like that I can set up a code for you!

**Codes never stack. One discount per order**, and checkout keeps the larger one. When a customer
expected two, the fix is to manually refund the dollar difference. Free shipping over $300 is a
separate threshold, not part of the stacking rule.

| Program | Terms |
|---|---|
| Military / first responder / teacher | **15% via GOV-X** ID verification, same rate for all three. Cannot combine with any sale or code — if it fails at checkout, send them the direct link (`stroleecarts.com/pages/military-discount` on the cart side, `stroleebaby.com/pages/govx-id-military-discount` on the baby side) and tell them **if they place the order without any other discount we'll refund the 15% after the fact.** |
| Birthday | 15%, single use, auto-issued. **Not reissued once expired**, even for high spenders. |
| Welcome / email signup | $15-$20 off |
| Senior | **None exists.** |
| HSA/FSA | Through **Burst** only. See below. |

**Standing amounts:** **$30 goodwill / retention / exception. $40 V1 upgrade.**

**Approved wording for the $30 offer:** *"The biggest discount we have right now is $30 off."*
Not "the best standing offer we have." Anything above is
Atira's call for that ticket only and never gets written in here as policy.

### The Special page trap
**The Special page applies $30 automatically, no code.** $195 → $165 at checkout. Customers write
asking for "the code for $30 off" when it's already coming off the page.

**Upgrade customers go to the REGULAR page.** The $40 upgrade code **will not stack** with the
Special page's automatic $30, so a customer sent to the Special finds their code failing and writes
back. Send them to `stroleecarts.com/products/strolee-stability-shopper`.

### Price adjustments
**We do match.** Cheaper elsewhere or on sale right after they buy, refund the difference to the
original payment method. **30-day window**, refused past it. We don't match a bundle broken into one
component, don't match a discount a third-party channel funded itself, and don't stack a price match
with an additional percentage off. Amazon orders aren't visible to us, but they can reorder on-site
and get matched.

### When a code fails
Clear cookies and cache, close all browsers, try incognito. If it still fails, have them place the
order and send the code after for a manual refund of the discount. Expired codes are reissued
generously, including hand-made one-offs. A code failing on part of an order is usually a
minimum-spend gate or the stacking rule.

### HSA / FSA
Strolee can't apply it or process reimbursement. Through **Burst** only: `app.getburst.com` /
`support@getburst.com`. Qualified customers save avg 30%.

**Raise Burst on any affordability ticket, and especially on mobility ones.** Someone saying they
can't afford the cart is the moment to mention it, not an afterthought.

**Approved wording for the Burst intro:** *"We also offer partial reimbursement with FSA/HSA funds
through Burst!"* Not "there's one other route worth knowing about" or any other hedged variant. A cart bought for documented
mobility needs is close to the textbook case for the letter of medical necessity Burst handles.

**Can it be done AFTER the purchase? Almost never.** From `stroleecarts.com/pages/fsa-hsa`: *"An LMN
must be dated on or before the purchase date, and clinicians cannot backdate one (IRS rule)."*
**The one exception, quoted from the page:** *"if you already had an LMN dated on or before your
purchase that covers your Strolee stroller, send it through and Burst can file your claim."*

So the right answer is a question, not a flat no: **did you already have an LMN dated on or before
the day you ordered?**

**Age changes which one applies.** From 65 and certainly at 79, someone on Medicare **cannot
contribute** to an HSA but **can still spend an existing balance**, which doesn't expire. FSAs are
employer-based, so an older retired customer almost certainly doesn't have one. Say **"if you have
an HSA"** to an older customer rather than naming FSA or assuming either. Don't explain the Medicare
rule to them, it's background for us.

### Restocks and launches — one answer, no dates
For anything not yet on the site, or out of stock with no date: **"we'll announce it by email."**
No date. No offer to personally email that one customer.

**The exception is someone already owed something specific** — a refunded pre-order, a photo we said
we'd send, a code we promised. Those keep their personal notification, and their tickets stay open
carrying it.

**Don't contradict a date already given to that person.** Check the thread first.
**Nothing to draft if the event hasn't happened and we've already told them.**

Current items: the **all-terrain 4-pack** (see `wheels.md`) · the **top tray** (see
`accessories.md`) · the **seated cart, "about a year or two"** (Atira, 2026-08-18 — that's the
answer on record, don't be vaguer or more precise than it).

## PATHS
- **"Where's my $30 code?"** Check their order first. On the Special page it came off automatically.
  If they already ordered with it, say so warmly in one line and move on.
- **V1 owner blocked by a V2-only part:** offer the $40 upgrade, link the **regular** page, don't
  create the code yet. **Approved wording:** *"we do have an upgrade program! We can give you a
  $40 discount on the v2."* Not "we do have a $40 upgrade offer".
- **Wholesale or bulk:** see `affiliates.md`.

## TRAPS
- **Don't create the code until they confirm.** Explain the offer and link the product first.
- **Don't improvise an amount.** $30 goodwill, $40 upgrade. Above that is Atira's, per ticket, and
  never written down as policy afterwards.
- **Don't recite their discount breakdown back to them.** Answer what they asked and stop.
- **Don't send an upgrade customer to the Special page.**

## LOG
- **2026-08-22, Atira:** *"remove the $100 discount from the playbook we cant offer that this is an
  exception."* One-off approvals don't become precedent. Recording them is exactly how the archive
  ended up with a random $10-to-$249 spread.
- **2026-08-21, Atira**, on consistency: *"We don't need to sacrifice a good customer experience for
  the sake of consistency. But also we can't be willy nilly."* Consistency is the default to reach
  for, not a rule that overrides judgment. The thing to avoid is being **random**, not being
  generous. Her boss's standing complaint about the previous agent was that he wished she would
  just pick something and stick with it.
- **2026-08-18, Atira** — the seated cart is "about a year or two." Don't be vaguer or more precise.

- **2026-08-27, Atira:** on a customer whose GOV-X discount wouldn't apply: *"Send them the direct
  link and tell them if they place the order without any other discounts we will refund her the
  15%."* That is the fallback whenever the code fails at checkout, not "the discount can't combine,
  try again."

- **2026-08-24, Atira:** *"If you'd like to move over to the V2 we do have an upgrade program! We
  can give you a $40 discount on the v2"* (correcting my *"we do have a $40 upgrade offer"*), and
  *"The biggest discount we have right now is $30 off"* (correcting *"the best standing offer"*),
  and *"We also offer partial reimbursement with FSA/HSA funds through Burst!"* (correcting *"there's
  one other route worth knowing about"*). All three added to PATHS above.
