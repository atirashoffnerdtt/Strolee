# Order changes, cancellations, addresses and payment

## GATE
- [ ] **Has it physically shipped?** The cutoff is carrier pickup, not the notification email. An
      order can be pulled back even after the shipment notification goes out.
- [ ] Read the order: product, variant, order number, date, carrier, tracking, fulfillment status.
- [ ] **What the order says, not what they say.**

**GIVEAWAY: none** normally. A refund or a waived charge is a flag.

## MUST SAY
- Before it ships, the answer is **yes**. No fee, no cutoff clock.
- After it ships we cannot cancel and cannot change the address. Say what we **do** instead: wait
  for it to arrive, then we send a return label.

## FACTS

### What we can and cannot do

| Situation | The limit |
|---|---|
| Cancel **before** it ships | **Yes, on request. No fee, no cutoff clock.** The cutoff is physical carrier pickup. Full refund, 1-5 business days. |
| Cancel **after** it ships | **No.** No recall, no paid intercept. **Never tell a customer to refuse delivery.** Wait for arrival, then a return label. |
| Cancel **after** delivery | Not a cancellation. Converts to a return. See `returns.md`. |
| Address change **before** it ships | Routine, free, done at the warehouse. |
| Address change **after** it ships | **We cannot do it.** *(Settled by Atira 2026-08-21.)* |
| Wrong address entered at checkout | **Almost never** reshipped or replaced, especially high-ticket. See `delivery.md`. |

### Routinely done pre-ship
Color swap, model swap, adding or removing accessories, applying a missed discount code, and
**merging two orders so they pay one shipping charge**.

- **Price went up** on a swap: email a Shopify invoice for the difference, ships once paid. Shipping
  is not re-charged.
- **Price went down:** partial refund to the card.
- **Missed a discount at checkout:** apply the code and refund the difference. Don't cancel and
  reorder.
- **Shipping holds** are available, adjustable any time, released on confirmation.
- **PayPal chargeback blocks the refund.** We can cancel, but can't refund until they withdraw it.

### After it ships
No cancel, and don't invent options. Say what we do instead: wait for it to arrive, then we send a
return label. Offering the label proactively is the norm. Additions become a separate order.

**Address change after it ships: we cannot do it.** Don't offer to try, don't file a request with
the carrier, don't promise an attempt. The 2026 archive has agents attempting it with FedEx and UPS.
That's retired.

What the customer can do themselves:
- **UPS:** change it through the UPS virtual chat. Send them the tracking link.
- **USPS:** only if they already have package forwarding enabled.
- **Tracking lags any accepted change.** The package can keep showing the old address, or even move
  toward it, before updating. Say so up front or it generates a second ticket.

### Payment
Card, PayPal, Apple Pay, and **Shop Pay** including installments (2-12 months).
- **Affirm is discontinued.** Existing Affirm customers contact Affirm directly.
- No Klarna, no Afterpay, no phone, money order, or prepaid card.
- Installment providers are third-party. We can't see or edit payment details or resolve plan
  disputes.
- **An apparent double charge is usually one failed authorization plus one successful charge.**
  Verify before assuming. The system auto-merges identical duplicate orders.
- **PayPal auto-fills the shipping address from their PayPal default.** A recurring cause of
  wrong-address tickets, and not something we control.
- **A chargeback blocks everything** — no direct refund, it goes through PayPal's process and they
  usually have to cancel the chargeback first. An active dispute can block future orders.

## PATHS
- **"Cancel my order":** if it hasn't shipped, yes, no questions. If it has, explain the return
  label route in the same message so it doesn't take two tickets.
- **"I entered the wrong address" before shipping:** fix it at the warehouse, free.
- **"I entered the wrong address" and it's gone:** see `delivery.md`. Their cost, warm but direct,
  no door left open.
- **Empty message came through:** ask warmly what they needed, don't guess.

## TRAPS
- **A shipment notification is not "shipped."** The cutoff is carrier pickup.
- **Never tell a customer to refuse delivery.**
- **Don't recite their order back to them.** No line-item math, no discount breakdown, no repeating
  the shipping address, no quoting the order total unless they asked about the money.
- **Don't attempt a carrier address change.** Retired.

## LOG
- **2026-08-21, Atira** — settled: address changes after shipping are not something we attempt.
- **2026-08-22, Atira**, on a draft that itemized a customer's whole order to prove I'd checked:
  *"Vickis message was all kinds of fucked up."* Her actual sent reply was three sentences: *"I see
  you were able to order with the code, yay! We will ship your order Monday."* That's the length.
