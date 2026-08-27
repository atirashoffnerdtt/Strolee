# Router — what kind of ticket is this, and which file answers it

## Which file

| The ticket is about | Open |
|---|---|
| Which product, which generation, what's discontinued, specs, dimensions | `products.md` |
| Wheels, anything at all | `wheels.md` |
| Accessories, car seat adapters, what's included | `accessories.md` |
| Something broke, replacement part, defect, "is this covered" | `warranty.md` |
| Return, refund, store credit, exchange, upgrade | `returns.md` |
| Where is it, not delivered, missing item, wrong item, damaged, late | `delivery.md` |
| Cancel, change, address, payment, double charge | `orders.md` |
| Codes, promos, price match, HSA/FSA, restock, "when is it back" | `discounts.md` |
| Won't click, won't fold, won't lock, won't stand, assembly, flying | `troubleshooting.md` |
| Affiliate, influencer, press, wholesale, private label | `affiliates.md` |
| A link or the contact details | `01-links.md` |
| A contradiction nobody has settled | `99-open.md` |

## Buckets

| Bucket | Looks like | Research | Cost |
|---|---|---|---|
| **A. No reply** | Spam, system notifications, marketing, **TikTok Shop relay messages** | None. List for closing. | ~0 |
| **B. Known answer** | Anything in the kb files | Read thread. Scan prior subjects. Draft. | Low |
| **C. Order-specific** | Where is it, wrong item, delivery, address, tracking, refund status | Thread + order data + prior subjects | Medium |
| **D. Judgment** | Warranty, return, refund, money, upset customer, anything we might pay for | Full. Draft, then flag the decision. | High |
| **E. Unknown** | A product or policy question not covered here | Look it up. **Then write it into the right kb file.** | High once, then B |

**Stamped.io Q&A tickets are B or E, never A.** Real customer questions posted on a product page.
They need an answer, and the answer helps future shoppers who read the Q&A too.

**TikTok Shop relay messages are A.** Spot them by sender: `...@chat-seller-us.tiktok.com`,
"TikTok Shop Seller Assistant", subject *"A new message from TikTok Shop customer [handle]"*.
That conversation gets answered inside TikTok. Recommend closing, never draft. Holds whatever the
message says. **A real email is still a real email** — someone writing from their own address about
TikTok is a normal ticket.

## Tags — read before triaging

**Three tags mean SKIP the ticket: `Ask Shad`, `Call Shad`, `Notify when back`.**
Don't draft them, don't research them, don't recommend closing them. List them by number and subject
so Atira sees what's parked, then move on.

- `Ask Shad` / `Call Shad` — parked waiting on Shad. Atira has a shared Gorgias view built on these,
  so they are a live working queue.
- `Notify when back` — the customer is owed a restock notification. Skipping is the handling.

**A ticket where WE owe the next move is not closeable**, tagged or not. "No new customer message"
is not "finished."

## Prior-ticket rule — every ticket, cheaply
`search_tickets` on the customer's email. Read **subjects and dates only**. Open full messages only
for a subject that relates to this ticket, or a ticket still open.

**Assume you've talked to them before.** 56.6% of tickets come from a repeat contact.

## What Strolee can and cannot do — check before drafting, not after

| Situation | The limit |
|---|---|
| Delivered to the address they entered, not received | **Cannot reship.** Customer opens the case with the carrier. |
| Wrong address entered at checkout | **Almost never** reshipped or replaced, especially high-ticket. |
| Return | Original packaging with tags, tested indoors only. **Shipping both ways comes out of the refund.** Refund within 5 business days of arrival back. |
| Warranty | **Manufacturing defects only.** Photo **and** order number first, every time. |
| Store credit | Available, and preferred over a refund. |
| HSA/FSA | **Cannot** apply it or process reimbursement. Burst only. |
| Airline handling | **Cannot** promise gate check is free or cover transit damage. |
| Discount codes | Explain the offer and link the product, **don't create the code** until they confirm. |
| Cancel before it ships | **Yes.** No fee, no cutoff clock. |
| Cancel after it ships | **No.** Return label once it arrives. Never tell them to refuse delivery. |
| Goodwill / retention / exception | **$30 standing.** Above that is Atira's, per ticket. Don't improvise a number. |
| Restocking fee | **No set fee**, but the refund can be reduced for condition. |
| What comes out of a refund | The **actual outbound shipping charge**, varies by carrier and distance. Archive runs $7 (accessory, USPS) to $39; carts generally $30-$45. Don't quote a fixed number. |
| Phone support | **None exists.** Email and web form only. |
| Anything outside these | Atira's call. Draft the reply, flag the decision, don't commit us. |

## The premise check — in your head, never in the draft

| They say | What's actually true |
|---|---|
| "Missing screws / hardware" | There are no screws. Snap buttons on the underside. |
| "The mesh caddy wasn't in my box" | Never included. Product photos show it attached. |
| "The new wheels don't fit" | They have a V1 silver frame. Wheels are V2-only. |
| "My accessory doesn't work" | They own the discontinued Original Shopper. |
| "It shipped to my old address" | The address on the order at checkout is what shipped. |
| "The carrier says it's on you" | Once it's with the carrier, the carrier investigates. |
| "It won't lock, it's defective" | Latch or snap-button technique. Troubleshoot first. |
| "I was told X" | Verify against ticket history. Sometimes true, sometimes not. |
| "The site says the Linq bars exist" | Page is live, bars are discontinued. Our page's doing. |
| "Gate check is free / covered" | Never promised by us. Airline's call. |

**Diagnose bluntly in your head, never in the draft.** The customer is never told they were wrong,
never corrected, never made to feel careless. State the fact neutrally and move to what happens
next. *"The order shows the Elm Street address"* does the whole job with no blame in it.

**And don't validate a wrong premise either.** No "you're right to keep pushing on this" when they
aren't right. Warmth goes in the remedy, not in agreeing with something untrue.
