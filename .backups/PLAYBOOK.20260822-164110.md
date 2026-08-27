# Strolee Support Playbook

The single knowledge file for drafting support replies. Load this + CLAUDE.md and nothing else.
Voice rules live in CLAUDE.md. Facts and decision paths live here.

If a fact isn't here, look it up, then **add it here** before you finish the session.

---

## PART 0 — HOW TO THINK THROUGH A TICKET

Run these seven questions in order, in your head, before drafting. They're ordered so the
cheap ones kill the expensive ones. If Q2 shows they own a discontinued model, most of the
rest of the reply writes itself.

### 1. Have we talked to this person before?
**Assume yes.** 56.6% of all Strolee tickets come from someone who has contacted us before,
and 849 repeat customers alone account for 17.3% of the entire archive. Skipping this check
is wrong more often than it's right.

`search_tickets` on their email. Subjects and dates only. Open a thread only if the subject
relates or the ticket is still open.
What you're looking for: a repeat of an issue we already answered, something we promised and
didn't deliver, what they already own, and what they were already told. **Never contradict
what a previous reply told them without knowing you're doing it.**

### 2. What did they actually order?
Shopify order data on the ticket. Product, variant, order number, date, carrier, tracking,
fulfillment status. Not what they say they ordered. What the order says.

### 3. Which product is this, really — and is it still in service?
This is the question that decides the whole reply, and it's the one most often gotten wrong.
Same product name across different generations means completely different answers about what
fits, what's available, and what's supported. Pin the **generation**, not just the name:
- Stability Shopper: **black frame = V2** (current) · **silver frame = V1** (superseded)
- "Personal Shopper" / "Personal Shopping Cart" / Original Shopper = **discontinued line**,
  a different model entirely, not an older Stability Shopper
- Double vs Double Lite · Baby+ vs Baby+ v2 · Destination vs Linq
- Pet bassinet is on v3 while the Pet cart frame is V2, so "V2" means different things
  depending on which part is being discussed

See the Legacy Register in Part 2 before telling anyone a part is available.
If the order data doesn't settle the generation, ask them the one identifying question
(frame color, purchase date) rather than guessing. Guessing here creates a second ticket.

### 4. What is the actual problem, underneath what they wrote?
Separate the **ask** from the **want**. "Does the adapter fit my Bravo" is an ask. The want is
"can I use my car seat with this stroller." Answer the want, and the ask answers itself.

### 5. Is the premise right? (the internal check — never goes in the draft)
A large share of tickets are built on something that isn't so. Check honestly and privately:

| Pattern | What's actually true |
|---|---|
| "It's missing screws / hardware" | There are no screws. Snap buttons on the underside. |
| "The mesh caddy wasn't in my box" | Never included. Product photos show it attached. |
| "The new wheels don't fit" | They have a V1 silver frame. Wheels are V2-only. |
| "My accessory doesn't work" | They own the discontinued Original Shopper, not a Stability Shopper. |
| "It shipped to my old address" | The address on the order at checkout is what shipped. |
| "UPS/FedEx says it's on you" | Once it's with the carrier, the carrier investigates. |
| "It won't lock, it's defective" | Latch or snap-button technique. Troubleshoot before conceding anything. |
| "I was told X" | Verify against the actual ticket history. Sometimes true, sometimes not. |
| "The site says the Linq bars exist" | The page is live but the bars are discontinued. Their confusion is our page's doing. |
| "Gate check is free / covered" | Never promised by us. Airline's call, and transit damage isn't covered. |

**Diagnose bluntly in your head. Never in the draft.** The customer is never told they were
wrong, never corrected, never made to feel careless. State the fact neutrally, move straight to
what happens next. "The order shows the Elm Street address" does the whole job without a single
word of blame. Where our own site caused the confusion, don't apologize for the product, just
answer plainly.

### 6. What can Strolee actually do here?
Check the limits in Part 3 **before** drafting, not after. A draft that offers something we
don't do is worse than no draft. The recurring hard limits: we don't reship on carrier
failures, we don't cover wrong addresses entered at checkout, returns have conditions and
shipping comes out both ways, warranty is manufacturing defects only, and we never affirm a
defect.

### 7. What's the shortest honest path to this being finished?
If the reply asks a question, work out where each answer leads. Answer both branches in one
reply whenever they fit. Leave a branch open only when the answers genuinely diverge.
Every avoided round-trip is a ticket Atira doesn't handle.

---

## PART 0.5 — WRITE THE MESSAGE THAT COMES AFTER THE ACTION

Atira can do the thing. She cannot write the email while doing the thing. So the draft's job is to
be the message that exists **once the action is already done**, with a blank wherever a value only
she can produce.

**Three rules, one idea.**

**1. Assume the action happens.** If the next step is something Strolee does, write the reply as
though it's done. "I just arranged for your replacement to be sent." "I just emailed you the label."
"Here's your code." Never "waiting on us, no draft," and never a holding message like "I'll send
your code shortly" or "let me get that set up for you." A holding message is a whole extra ticket
that buys nothing.

**2. Leave `___` for anything only Atira can produce.** Put the blank exactly where the value goes
and let her paste it in. This applies to:

| Blank for | Looks like |
|---|---|
| A discount code she has to create | `Here's your $40 code: ___` |
| The eligible refund amount | `you will be refunded $___, after the shipping out and back` |
| A tracking number | `Your tracking number is ___` |
| A label or invoice link | `Here's your label: ___` |
| An order number we can't locate | `your order ___` |
| A date only she knows | `it'll go out on ___` |

**Flag every draft where Strolee gives something at its own cost.** Free replacement part, free
reship, refund, credit, discount, waiving a rule. Say plainly at the top of that ticket's write-up
what we're giving and why, so Atira sees the commitment before she sends rather than finding it
inside a paragraph. Settled by Atira 2026-08-22: *"You need to flag for me when you're saying we are
doing something like this."*

This does not conflict with rule 3 below. **A value is a blank. A giveaway is a flag.** Filling in a
code or an amount she was always going to generate is routine. Deciding on her behalf that we're
shipping a free part is not, and it must never be slipped in as though it were.

**3. A missing value is a blank, not a flag.** "Needs Atira: create the code" is work handed back.
`Here's your $40 code: ___` is work done. Only flag genuine judgment calls, live business decisions,
and facts that exist nowhere reachable. A number or a code she was always going to generate is not
one of those.

**The one exception is an event that hasn't happened yet.** A restock landing, a photo that doesn't
exist, a carrier that hasn't moved. Nothing to draft there, because there's nothing true to say yet.

Settled by Atira 2026-08-22 across three tickets in a row: a refund amount left out, a replacement
left undrafted because it hadn't shipped, and a discount code written as "I'll send it shortly."
*"I can just send the code then next natural message is the code. If it's something I need to create
or something you don't have just put ___ so I can fill it in."*

---

## PART 1 — TICKET ROUTER

Triage every ticket into one bucket first. The bucket decides how much research to do.
Do not research past what the bucket calls for.

| Bucket | Looks like | Research to do | Cost |
|---|---|---|---|
| **A. No reply** | Spam, system notifications, marketing, automated alerts, **TikTok Shop relay messages** | None. List for closing. | ~0 |
| **B. Known answer** | Anything answered in Part 2 or 3 below | Read the thread. Scan prior-ticket subjects. Draft. | Low |
| **C. Order-specific** | Where is it, wrong item, delivery, address, tracking, refund status | Thread + Shopify order data on the ticket + prior-ticket subjects | Medium |
| **D. Judgment** | Warranty, return, refund, money, an upset customer, anything Strolee might pay for | Full: thread, order data, all relevant prior tickets. Draft, then flag the decision to Atira. | High |
| **E. Unknown** | A product or policy question not covered below | Look it up (product page, macro, Shopify). **Then save it to Part 2.** | High once, then B forever |

**Stamped.io Q&A tickets are bucket B or E, never A.** They're real customer questions on a product page. Answer them.

**TikTok Shop relay messages are bucket A. Recommend closing them, never draft a reply.**
Settled by Atira 2026-08-22: *"We don't need to answer messages like 288940551, those need
answered in tiktok so you can recommend to close them."*

Spot them by the sender: **`...@chat-seller-us.tiktok.com`**, "TikTok Shop Seller Assistant", with a
subject like *"A new message from TikTok Shop customer [handle]"*. These are notification copies of
a conversation that lives inside TikTok Shop. That conversation gets answered in TikTok, by the
person who handles TikTok, so a reply drafted here is work nobody uses. This holds whatever the
message says, including real product questions and creator/affiliate asks.

**A real email is still a real email.** Someone who writes to `connect@stroleecarts.com` from their
own address about TikTok, a TikTok sample, or a TikTok collab is a normal ticket, answer it. The
relay address is the only thing that makes it bucket A.

### Tags that change what you do — read these before triaging

**`Ask Shad` means the ticket is parked, waiting on Shad. It stays open.**
Never list it as closeable, never recommend closing it, and don't draft a reply that answers the
thing Shad is being asked. Atira has a shared view built on this tag, so it is a live queue, not a
label. The correct handling is one line saying it's with Shad and what it's waiting on. Corrected by
Atira 2026-08-22 after I put an Ask Shad ticket in a "close, no reply" list.

A ticket where **we** owe the next move (Atira said she'd check with the warehouse, open a carrier
case, come back Monday) is also not closeable, whether or not it carries the tag. "No new customer
message" is not the same as "finished."

**`Notify when back` carries no triage meaning. Ignore it.**
It marks a restock notification and tells you nothing about what the ticket needs. Don't route on
it, don't bring it up, don't treat it as an open action. Settled by Atira 2026-08-22.

**Appended 2026-08-22 (Atira):** *"You need to be skipping tickets with these tags."*
`Notify when back` means **skip the ticket**, the same way `Ask Shad` is skipped. Don't draft it,
don't close it, list it and move on. I read "ignore it" above as "ignore the tag and draft
anyway" and wrote replies for Michelle Beach and Dolores Marquez that should never have been
written. Corrected three times in one session before it landed.

### Prior-ticket rule (CLAUDE.md requires this on every ticket, cheaply)
Run `search_tickets` on the customer's email. Read the returned **subjects and dates only**.
Open full messages only for a ticket whose subject relates to this one, or any still open.
A first-time customer with one ticket costs you one search and nothing more.

---

## PART 2 — FACTS

### Carts

**Stability Shopper V2** — $195, on Special $165 (`/products/strolee-stability-shopper-special`; regular: `/products/strolee-stability-shopper`). "Special" is the same product at a limited-time discount. Use the Special link while the sale is live. The $40 V1 upgrade discount does **not** stack with it.
- Open 27"D x 23"W x 38.5"H · Folded 23"W x 9"D x 25.5"H · 13 lbs · handle 38.5"
- Upper basket 55 lbs · lower basket 20 lbs · frame stability 300 lbs · pet bassinet 50 lbs
- **Included:** frame, personal shopping bag (21"L x 12.5"W x 15"D), cup holder
- **Not included** (product photos show the mesh caddy attached, which misleads): everything in the accessory table below

**Colors (V2): Black · Blue ("Main Blue") · Shadow · Sage · Berry.** Sage is a soft light green, and the site photos are true to it. Checked 2026-08-22: **Berry sold out on both pages**, Shadow sold out on the Special page but available on the regular page. No restock date exists for Berry, point at the email list.

**The August Special page applies $30 off automatically, no code.** $195 becomes $165 at checkout. Customers write in asking for "the code for $30 off" when it is already coming off the page itself. Check `total_discounts` on their order before creating anything. Live variant stock is readable at `stroleecarts.com/products/<handle>.js`.

**V2 vs V1 identification: black frame = V2, silver frame = V1.** V1 is not compatible with new wheels.
**Send an upgrade customer to the REGULAR product page, not the Special.** The Special page applies
its $30 automatically and **the $40 upgrade code will not stack with it**, so a customer sent there
finds their code failing and writes back. Use `stroleecarts.com/products/strolee-stability-shopper`
($195) with the $40 code. The Special link is for everyone who isn't using a code.

**Send the links, always.** "How do I order this" is answered with URLs, not instructions. Link
every product named in the reply, the cart and the accessory both.

V1 upgrade offer: $40 off a new V2 cart, customer keeps their current one. Explain the offer and link the product, but **do not create the discount code until they confirm interest.**

**Pet Bassinet v3 folds flat.** Two metal bars clip into the bottom to hold it open; unclip those and it lays down. Fold shown at the **1:30 mark** of `stroleecarts.com/pages/pet-stroller-assembly`. It drops straight in once the shopping bag is lifted out, and it fits every version of the Stability Shopper.

**Stability Pet V2** — `/products/strolee-stability-pet`. Ships with both the pet bassinet and the personal shopper bag; converts between either config anytime. V2 = the frame; the bassinet is on v3. Carts ship with the latest bassinet.

**Original Shopper** (aka Personal Shopper / Personal Shopping Cart) — discontinued, replaced by the Stability Shopper. **Completely different model.** New accessories, wheels, and upgrades do not fit it. Has its own clearance wheels only (stair climbing $22, beach $28). No new accessories are being made for it.

### Strollers

**Destination vs Linq** — both fit overhead bins.
- Destination: more compact, upgraded-wheel option, handle 40" from floor, 12.5 lbs, folded 8.5"D x 17.5"W x 22"H
- Linq: holds a car seat, handle 42", no rear axle (better for taller parents with longer strides)

**Double vs Double Lite** — Lite is a limited-edition lower-cost version of the V2 Double.
- Lite does **not** include: backpack, rain cover, snack trays (sold separately)
- Lite does **not** have: adjustable handlebar, deeper seats
- Harness: Lite = 5-point magnetic buckle · V2 = 3-point no-rethread
- Parent pockets: Lite = velcro · V2 = zippers
- Weight: Lite 50 lbs/seat · V2 60 lbs/seat
- Both tested down to 3 months
- Identical on both: fabrics, wheels, belly bar, seat cushion, canopy size. All accessories interchangeable.

**Strolee Baby has only one single stroller model.** Never ask which one they have.

**Single belly bar** (customers say "lap bar") — $17.90, `stroleebaby.com/products/single-belly-bar-for-strolee-double`. Fits all single Strolee strollers. The Double includes a 2-section bar; the single bar frees one side for a car seat adapter.

**Linq bars (stroller connectors) — discontinued and will not be restocked.** Confirmed across many 2026 tickets. The Linq system page (`stroleebaby.com/pages/strolee-linq`) is still live and still describes connecting two strollers, which keeps generating these tickets. State plainly that they're no longer available and won't be restocked. Don't promise a future version.

**Say sorry about it, warmly.** Atira's approved wording: *"The Linq bars are no longer available, and we won't be restocking them, I'm sorry about that! Our double stroller is more popular. Our Linq strollers are still available on their own, and they can be pushed side by side."* Apologizing for the news is not apologizing for the product. A bare no reads cold.

### Wheels

| Wheels | Price | Fits | URL |
|---|---|---|---|
| V2 Shopper upgraded (4-pack) | — | V2 Shopper | Currently OOS, announced by email when back |
| V1 Shopper upgraded front | $32 | V1 Shopper only, front only | `stroleecarts.com/products/upgraded-stability-shopper-front-wheels` |
| V2 stair climbing | $42 | V2 Shopper only (black frame) | `stroleecarts.com/products/v2-stability-shopper-stair-climbing-wheels` |
| V2 beach | $42 | V2 Shopper only (black frame) | `stroleecarts.com/products/v2-stability-shopper-beach-wheels` |
| Double/Baby+ v2 upgraded | $59 | Double v2, Double Lite, Baby+ v2 | `stroleecarts.com/products/upgraded-wheels-for-strolee-double-baby-v2` |
| Destination upgraded set | $50 | Destination only (2 front + 2 rear) | `stroleebaby.com/products/destination-upgraded-wheel-set` |
| Clearance stair climbing | $22 | Original Shopper & Beach Cart ONLY | — |
| Clearance beach | $28 | Original Shopper & Beach Cart ONLY | — |

The **V1 upgraded front wheels ($32)** are ball bearing, about 20% larger in diameter than the originals, and install tool-free. In stock as of 2026-08-22. This is the only upgrade wheel a silver-frame V1 owner can use.

### WHEEL POSITIONS — read this before answering any wheel ticket

Getting this wrong sends a customer a part that cannot fix their problem.

| Position | What's there | What swaps in |
|---|---|---|
| **Front** | Swivelling casters. This is what "catches," "sticks," or "stops on uneven ground." | V1 upgraded front wheels $32 (**V1 silver frame only**). On V2 the only front fix is the all-terrain 4-pack. |
| **Rear** | Fixed wheels. | **Stair climbing $42 (2x) · Beach $42 (2x)**. Both are REAR PAIRS. |
| **All four** | — | The **upgraded all-terrain 4-pack**, the only set that replaces the fronts on a V2. |

**A front-wheel complaint is never solved by stair or beach wheels.** They go on the back. Offering
them to someone whose fronts are catching reads as not having listened. Corrected by Atira
2026-08-22.

**Wheels come off with a silver tab, not a button.** There's a small **silver tab** where each wheel
meets the frame. **Press and hold it and the wheel slides straight out.** No tools. Corrected by
Atira 2026-08-22: *"it's not a button."* The stair-wheel product page and some past replies say
"push a button to release," and that wording is wrong. Don't copy it.

**"v2" means different products on the two sites, and it costs us orders.**
On `stroleebaby.com`, **v2 = the Double / Baby+ v2 stroller**. The "Upgraded Wheels for Strolee
Double & Baby+ v2" ($59) are **sold only on the Baby site and fit baby strollers only.** Cart owners
see "v2" and buy them for a Stability Shopper V2, and they do not fit. When that happens: say
plainly that those wheels are for the v2 baby stroller and are only ordered from the Strolee Baby
website, and offer the return with **shipping deducted** from the refund.

**Don't tell a mistaken customer they're right.** No "you're right to keep pushing," no "you're right
to be frustrated." Where they've ordered the wrong thing or read a page wrong, state the fact warmly
and move to the fix. Validating the premise makes the correction that follows land as a
contradiction. Corrected by Atira 2026-08-22: *"She's not right to keep pushing this."*

**The caster lock is a Personal Shopper feature.** `personal-shopper-assembly` carries a video
called "Caster Locking." Do **not** tell a Stability Shopper owner to check their swivel lock, that
mechanism belongs to the older cart and the advice may not apply. Confirm with Shad before giving
any front-wheel mechanism on a Stability Shopper.

**Stair wheels on steps and curbs: they pull the cart behind you**, gripping each step as it goes.
Approved wording sent 2026-08-18. They stay on for flat ground, no swapping back.

**A wheel swap is shown on the stair-wheel product listing, below the add to cart button:**
`stroleecarts.com/products/v2-stability-shopper-stair-climbing-wheels`. Found by Atira 2026-08-22
after I told two customers no such video existed.

**Send that link only to someone actually asking about the stair wheels.** It is a $42 product page.
Dropping it on someone who just asked how the wheels come off reads as a pitch, and implies they
need that product to do the thing they asked about. For a plain "how do I remove the wheels," the
answer is the silver tab and nothing else. Corrected by Atira 2026-08-22.

**Don't attach a link because it's adjacent to the topic.** A product link inside an answer tells the
customer they need that product. Link what they asked about, or link nothing.

**Product listings carry videos below the add to cart button.** The how-to pages are not the only
place video lives. `personal-shopper-assembly` has Caster Locking · Unfolding · Locking Brake ·
Shopping Basket · Lower Storage Basket. `stability-shopper-how-to` has Assembly · Lower Pet Carrier
Install · Car Seat Adapter Install. Neither covers wheels, which is what made me think there was
nothing, when the video was on the product page all along.

**Never conclude a video doesn't exist from a page fetch.** Fetching a page returns its text and
does not return embedded video, so "I didn't see one" is not "there isn't one." Check the relevant
product listing, and if you still can't confirm, ask rather than telling a customer we don't have
something. What comes back is bounded by the tool, not by what's on the site.

**The Personal Shopper has no upgraded or all-terrain set any more, and there is no substitute.**
The old "Upgraded All Terrain Wheels 4-Pack" for it is gone. What's left is **clearance stock**:
stair climbing $22 and beach $28. Those are leftovers, **not an upgrade**, and they are not what
someone asking for stronger wheels is asking for.

**Say that plainly.** Don't relabel the clearance set as "the sturdiest option that fits your cart"
or let a customer infer it's the upgrade under another name. Tell them we don't make upgraded wheels
for that cart any more, say sorry for the news, then lay out what we actually have and let them
choose. Corrected by Atira 2026-08-22: *"be honest with franchesca about what were offering. we do
not have the upgraded wheels."*

**This generalises.** When we don't have the thing, we don't have it. Offering the nearest remaining
item is fine, dressing it up as the thing they asked for is not, and it comes back as a second
ticket from someone who bought on our description.

**V2 all-terrain 4-pack, what customers have already been told:** Abbey promised **free shipping**
on it when it lands (2026-08-08) and Atira said **about a month** with **a discount code sent by
email** (2026-08-17). So it's due around mid-September. Don't now tell those customers there's no
date, and don't drop the free shipping or the code.

**Wheel availability checked 2026-08-22** (`stroleecarts.com/collections/accessories-all`):
in stock are V2 stair climbing $42, V2 beach $42, clearance stair climbing $22, clearance beach $28,
and v3 Beach Cart rear street wheels $29. The **V2 upgraded all-terrain 4-pack is still not listed
and still not back.** Pre-orders for it were taken and then refunded. There is no date, so don't
give one.

**Original Shopper owners: we DO still sell wheels for it.** The clearance listing is titled
"Clearance- Stair Climbing Wheels For Original Shopper Only & Beach Cart," $22, in stock, plus
clearance beach wheels $28. Both live on the accessories-all collection rather than the front of
the site, which is why customers write in saying we only sell wheels for the beach and stability
carts. Send them the collection link, don't tell them nothing fits.

V2 stair climbing wheels work on **all** surfaces indoors and out, so there's no need to swap back for flat ground. Push-button swap.

### Accessories — `stroleecarts.com/collections/stability-shopper-accessories`

All 13 can be bought on their own, no cart purchase required. Send that collection link when someone asks how to order accessories separately.

| Accessory | Price | Notes |
|---|---|---|
| Personal Shopper Rain Cover (they say "cart cover") | $39 | Personal Shopper + Stability Shopper |
| Pet Bassinet v3 | $75 | `/products/shadow-replacement-bassinet` |
| Lower Pet Seating | $42 | Stability Shopper |
| Mesh Caddy Bag | $17 | `/products/mesh-caddy-bag` |
| Personal Shopping Bag Replacement | $39 | `/products/personal-shopping-bag` |
| Personal Organizer | $39 | `/products/strolee-single-organizer` |
| Deluxe Organizer & Crossbody Bag | $45 | `/products/deluxe-strolee-organizer-crossbody-bag`. **Attaches with the little clips on the bag itself, not with velcro, and there is no velcro on the cart.** Closes with zippers. An agent told a customer "velcro straps that attach to the frame" on 2026-07-23 and it generated three follow-up tickets from someone who went looking for velcro on the cart and could not find any. |
| Insulated Freezer & Organizer Bags | from $19 | 1-pack insulated $23 · 1-pack non-insulated organizer $19 · 3-pack (1 ins + 2 non) $49, cheaper than $61 separately. Three fit in the Personal Shopping Bag. |
| Additional Cup Holder | $10 | |
| Travel Backpack | $39 | Only one backpack. Fits V2 Shopper, snug but works. |
| Car Seat Adapters (cart line) | $44 | `/products/strolee-stability-shopper-car-seat-adapters` — page today reads "Fits Only Strolee Stability Shopper" |

### Car seat adapters (stroller line) — `stroleebaby.com/products/strolee-double-car-seat-adapter`
Two variants, both compare-at $55: **Nuna/Maxi-Cosi/Cybex/Clek/Britax $39** · **Chicco/Graco $44**.
Page lists compatible strollers as "Strolee Double V2, LINQ V2, Baby+".
Compatible seats: Nuna Pipa / Pipa Lite RX / Pipa Aire RX / Pipa URBN / Klik · Maxi-Cosi Mico Luxe & Mico Max · Cybex Cloud Q & Aton Q · Clek · Britax Willow · Chicco KeyFit 30 & 35 · Graco SnugRide Lite 35 LX & LX Infant.
The adapter is necessary for safety; it's the only tested way to keep the seat in place.

- **"Chicco Bravo" is not a car seat** — it's a travel system, and the bundled seat varies: Bravo Trio = KeyFit 30 (on our list) · Bravo Sport = KeyFit Sport (not) · Bravo LE Trio = KeyFit Max ClearTex (not) · Bravo Primo Trio = KeyFit Max Zip ClearTex (not). **When a customer says "Bravo" or just "KeyFit," ask which KeyFit model before confirming compatibility.**
- Baby+ and Double hold car seats. Mobility Strolee does not (yet).

**Website discrepancy, confirmed live 2026-08-22:** the adapter page lists "Baby+" as compatible,
and that link resolves to the **Baby+ v2** page because the original Baby+ listing is a draft. A
customer on the original Baby+ cannot tell from the page which generation it fits, and at least one
bought a secondhand adapter that then didn't fit. Say plainly that the link points at v2; don't
guess at the fit.

**Open questions — flag to Atira/Shad, don't guess:**
- Does the Chicco/Graco adapter fit KeyFit Max or KeyFit Sport?
- Does the stroller adapter fit the ORIGINAL (pre-v2) Baby+ child seat side? (Baby+ v2 basket side converts for a car seat or the pet bassinet. On the original Baby+, Shad told a customer Sept 2025 the basket side only swapped with the pet bassinet.)

### LEGACY REGISTER — discontinued and superseded

Check this before telling anyone a part, accessory, or replacement is available.
"We have that" is wrong if they own the previous generation.

**The fastest identifying question:** *is there a bar going across the rear wheels?*
**Bar across the back = Personal Shopper. No bar = Stability Shopper.** That one question
separates the discontinued line from the current one.

| Model / part | Status | What still fits | What does NOT fit |
|---|---|---|---|
| **Personal Shopper** ("Original Shopper," rear axle bar across the back wheels) | Discontinued, restock uncertain | Top pet bassinet. 2-year warranty still honored, replaced with a current Stability cart. Upgrade program available. | Lower pet carrier no longer made for it. Stair-climbing and beach wheels don't fit, V2 was a full redesign. |
| **Stability Shopper V1** (silver frame) | Superseded ~June/July 2026 when V2 launched | Its lower pet seating fits onto a V2 | New stair-climbing and beach wheels. V1 rear wheels need tools and can't be swapped for any upgrade wheel; V2 rear wheels are tool-free. |
| **Beach Cart, older style** (gray mesh bag) | Styling discontinued, the cart line is still active | Nothing | **No replacement bags or parts at all.** Offer $40-$60 off the newest Beach Cart instead. |
| **Double stroller, pre-V2** | Discontinued | Nothing, no parts carried over | No wheels fit it at all. Offer $100 off either current Double. |
| **Linq connector bars** | Fully discontinued, will not be restocked | Linq singles are still sold and can be pushed side by side without the bar | The bar itself. The Linq system as a bundle was discontinued July 2026. |
| **Middle / mid storage tray** (sat between the baskets) | Discontinued over a year ago, no plans to return | — | — | 
| **Top tray for the cart** | **Coming, not launched.** Different product from the discontinued middle tray. | — | Not on the site yet, no photo exists |
| **Pet bassinet v1 / v2** | Superseded by v3 ($75) | Carts ship with the latest, so buyers get the current version | — |
| **Strolee Baby+ original (pre-v2)** | Superseded | — | Its Shopify product is now a DRAFT, so old links resolve to the Baby+ v2 page |
| **Overhead-bin macro 284330** | Stale, do not reuse | — | Claims carts fit overhead. They don't. |

**"Mobility Strolee" is not a product.** It's a customer nickname for the Stability Shopper. It
appears nowhere as an official name. Don't correct them, just answer about the Stability Shopper.

### Compatibility — the negatives that cost the most

| Item | Fits | Does NOT fit |
|---|---|---|
| Stair-climbing / beach wheels | Stability Shopper **V2 only** (black frame) | V1 silver frame. Won't attach at all. |
| Pet bassinet | Any cart | **Except the Beach Cart** |
| Lower pet seating | V1 unit fits onto V2 | Not available new for the Personal Shopper |
| Beach Cart wheels | Beach Cart only | Not interchangeable with Stability Shopper wheels, different mounts |
| Car seat adapters | Baby+ and Double | **Do not attach to the Stability Shopper at all.** No seat attachment exists yet. |
| Car seat brands | Nuna, Maxi-Cosi, Cybex, Clek, Britax, Chicco, Graco | **Evenflo** and **Joie** not supported yet |

### Replacement parts we do NOT sell
Checked 2026-08-22 on stroleebaby.com. There is **no replacement seat cover, seat fabric, seat
cushion, canopy, or seat liner** sold for the Double. The only Double accessories are the Parent
Organizer ($55), Rain Cover ($49.90), Snack Tray ($19.90), Snack Cups, and Carrying Straps (from
$9.90). If fabric damage isn't covered under warranty, there is nothing to link them to. Don't
offer one.

### Beach Cart specifics
Holds up to 100 lbs. Comes in street-wheel and beach-wheel configurations. **Explicitly not
stability-rated** — it can't support weight on the handle the way the Stability Cart can, so never
describe it that way. Replacement bags $15, newest style only.

### Stability Shopper — additional confirmed specs
2-year warranty, 30-day risk-free trial, **ships fully assembled**, the customer just pops the
wheels on. Pet bassinet holds 50 lbs and sits ~33" off the ground, level with the basket. Its
canopy folds down but does not come off. Two leashes are built into the bassinet. A sleeve on the
bassinet side lets a seatbelt thread through to secure it in a car.

### Double stroller specs
V2 Double weighs 22 lbs, Double Lite 19.7 lbs. Folds about 90% of the way with car seat adapters
attached. Usable without a car seat from **3 months**.

### Restocks and launches — the answer is "we'll announce it by email"

For anything not yet on the site, or out of stock with no date, tell them **we'll announce it by
email**. Don't offer to personally email that one customer. Settled by Atira 2026-08-22.

A personal notification is a promise someone then has to remember and honour, and the tickets stay
open carrying it. Keep those for people already owed something specific: a refunded pre-order, a
photo we said we'd send, a code we promised. For a plain "do you sell X / when is X back," it's the
email announcement, and no date.

### Coming but not launched — what we've already told people

**Top tray for the cart.** Abbey, 2026-08-15: *"We will have a tray available for the top of the cart
available next week."* As of 2026-08-22 it is still not in the warehouse and **no photo of it
exists**, so don't promise one. That "next week" has already slipped, so don't repeat it. Say it's
coming soon and offer to let them know. Dolores Marquez is waiting on the photo with her ticket
deliberately left open.

**The beach cart's lower storage compartment fits the beach cart only.** It is not the top tray and
it will not go on a Stability Shopper.

**Seated cart: "about a year or two."** Atira, 2026-08-18. That is now the answer on record, so
don't be vaguer than it or more precise than it.

**The V2 upgraded all-terrain 4-pack: the factory sent the wrong wheels.** Pre-orders were canceled
and refunded across a whole cohort of customers, several of whom bought the cart *because* of those
wheels. Everyone affected has been promised a **discount code plus free shipping** when the set
returns, and it's expected around mid-September. Known affected: Michelle Beach, Sally Yantis,
Theresa Barnett, Monica Bauman, Victoria Vega. Before answering any upgraded-wheel ticket, assume
they're in this cohort and check what they were already promised.

**Why the stair wheels are V2-only, and it's a good answer.** We were working on making them fit the
V1 frame and found it **would have compromised the frame's stability**, so we built them for the new
frame instead rather than make that trade on a cart people lean on. Given by Atira 2026-08-22. Use
it: it tells a V1 owner they weren't misled when they were told stair wheels were coming, and it
explains the outcome without conceding anything about the cart they own. Say "would have," not
"did," so it stays about the design we didn't ship rather than the cart in their house.

**A V1 owner cannot have stair wheels at all.** Stair and beach wheels are V2-only, and the clearance
stair set is Original Shopper and Beach Cart only. There is no stair-climbing option for a silver-frame
V1 Stability Shopper, and the only route to one is a V2 cart. Say that plainly rather than implying
a workaround exists.

### Links that come up constantly
- Personal Shopper assembly / fold video: `stroleecarts.com/pages/personal-shopper-assembly`
- Stability Shopper how-to: `stroleecarts.com/pages/stability-shopper-how-to` — checked 2026-08-22, it holds three videos: **Assembly**, **Lower Pet Carrier Install**, **Car Seat Adapter Install**, plus the HSA/FSA section. **There is no video on the site for using the stair-climbing wheels on steps or curbs.** If someone asks for one, say so plainly rather than sending them to a page that doesn't have it.
- Pet stroller assembly (bassinet fold at 1:30): `stroleecarts.com/pages/pet-stroller-assembly`
- Beach cart assembly: `stroleecarts.com/pages/beach-cart-assembly`
- Double V2 how-to (kickstand at 2:40): `stroleebaby.com/pages/strolee-double-v2-how-to`
- All accessories and wheels: `stroleecarts.com/collections/accessories-all`
- Warranty terms: `stroleecarts.com/pages/warranty` · `stroleebaby.com/pages/warranty`
- HSA/FSA: `stroleecarts.com/pages/fsa-hsa`
- Military/first responder/teacher: `stroleebaby.com/pages/govx-id-military-discount` · `stroleecarts.com/pages/military-discount`
- 30-day home trial terms: `stroleebaby.com/pages/30-day-home-trial`
- EU storefront: `stroleecarts.eu`

### Shipping and carriers
Ships from the **Charlotte, North Carolina warehouse**. Warehouse only, no storefront pickup.
**US only, no Canada.** Carts ship to **residential addresses only**.
An overseas customer has two routes: the EU storefront `stroleecarts.eu`, or **shipping to a US
address themselves and forwarding it on**, which several have offered to do. Take the second one if
they suggest it, it's a normal US order.

| | |
|---|---|
| Carts and strollers | **FedEx** (default, large and high value) |
| Some Strolee Baby orders | **UPS**, also often used for reshipments |
| Small accessories and parts | **USPS**, and can be requested for a replacement part |
| Hawaii and Alaska | **FedEx SmartPost** (FedEx hands to USPS for the last mile). The single biggest source of chronic delays. Large surcharge. |

**Always verify the actual carrier on the order before naming one.** The archive has a case
where the same customer was told two different carriers on consecutive days.

- **Ships 1-2 business days** after the order, **3-5 business days** in transit. "Most orders arrive within about a week."
- **Shipping cost:** $8.95 on carts, **free over $300**. Strolee Baby standard ~$6.95.
- Boxes often arrive **opened and retaped**. That's us adding purchased accessories, not damage. Say so plainly.
- **Accessories ship inside the stroller or cart box** — car seat adapters, wheels, seat liners, organizers. Check there before treating anything as missing.


### Discounts, promotions, and payment

**When a customer is ready to buy, lead with yes and don't dwell on what they can't have.**
Answer the compatibility question, name the offer, offer to set the code up. Don't volunteer the
shipping threshold, don't do the price arithmetic for them, don't front-load a small no into a sale.
Atira's version of exactly this reply, 2026-08-22, in full: *"Yes, your shopping bags, cooler bags,
rain cover and organizer all work on the stability cart! We do have upgrade offer is $40 off, and you
keep the cart you have! And we have black in stock! If you'd like that I can set up a code for you!"*
Three short yeses and an offer. Mine had the $8.95 shipping rule in it and was worse for it.

**Codes never stack. Only one discount per order**, and checkout automatically keeps the larger
one. This is stated in nearly every relevant reply. When a customer expected two, the fix is to
manually refund the dollar difference. Free shipping over $300 is a separate threshold, not part
of the stacking rule.

**Standing programs:**
| Program | Terms |
|---|---|
| Military / first responder / teacher | **15% via GOV-X** ID verification, same rate for all three. Cannot combine with any sale or code. |
| Birthday | 15%, single use, auto-issued. **Not reissued once expired**, even for high spenders. |
| Welcome / email signup | $15-$20 off |
| Senior | **None exists.** |
| HSA/FSA | Through **Burst** only: `app.getburst.com` / `support@getburst.com`. We can't apply it or process reimbursement. An LMN can't be backdated. |

**Raise Burst on any affordability ticket, and especially on mobility ones.** Someone saying they
can't afford the cart is the moment to mention it, not an afterthought. A cart bought for documented
mobility needs is close to the textbook case for the letter of medical necessity Burst handles.

**Age changes which one applies.** Once someone is on Medicare (so from 65, and certainly at 79) they
**cannot contribute** to an HSA, but they **can still spend an existing balance** carried over from
their working years, and it doesn't expire. FSAs are employer-based, so an older retired customer
almost certainly doesn't have one. Say **"if you have an HSA"** to an older customer rather than
naming FSA or assuming either. Don't explain the Medicare rule to them, it's background for us.

**Price adjustments: we do match.** If they find it cheaper elsewhere or it goes on sale right
after they buy, refund the difference to the original payment method. **30-day window**, refused
past it. We don't match a bundle broken apart into one component, don't match a discount the
third-party channel funded itself, and don't stack a price match with an additional percentage off.
Amazon orders aren't visible to us directly, but they can reorder on-site and get matched.

**When a code fails:** clear cookies and cache, close all browsers, try incognito. If it still
fails, have them place the order and send the code after for a manual refund of the discount.
Expired codes are reissued generously, including hand-made one-off codes. A code failing on part
of an order is usually a minimum-spend gate or the stacking rule.

**Payment:** card, PayPal, Apple Pay, and **Shop Pay** including installments (2-12 months).
- **Affirm is discontinued.** Existing Affirm customers contact Affirm directly about their plan.
- No Klarna, no Afterpay, no phone, money order, or prepaid card.
- Installment providers are third-party. We can't see or edit payment details, update cards, or resolve plan disputes.
- **An apparent double charge is usually one failed authorization plus one successful charge**, not a real duplicate. Verify before assuming. The system auto-merges identical duplicate orders.
- **PayPal auto-fills the shipping address from their PayPal default**, not something we control. It's a recurring cause of wrong-address tickets.
- **A chargeback blocks everything** — no direct refund, it goes through PayPal's process and they usually have to cancel the chargeback first. An active dispute can block future orders.

### Contact
No phone line. Email `connect@stroleecarts.com`, web form at `stroleecarts.com/pages/contact`, address 480 Interchange Dr, Dallas, NC 28034.
When someone asks for a phone number, redirect warmly: "We don't have a phone line, but I'm right here and happy to help you work through it!"

---

## PART 3 — DECISION PATHS

Each path is: what's true → what we do → which closing.

### WHAT STROLEE CAN AND CANNOT DO — check before drafting, not after

Never offer something in this column we don't do. A draft that promises what we can't deliver
costs more than no draft at all.

| Situation | The limit |
|---|---|
| Package marked delivered, not received | **Cannot reship.** Customer opens the case with FedEx or UPS using their tracking number. |
| Wrong address entered at checkout | **Almost never** reshipped or replaced, especially high-ticket. The address on the order at checkout is what shipped. |
| Return | Original packaging with tags, tested indoors only. **Shipping both ways comes out of the refund.** Refund within 5 business days of arrival back. Drop at FedEx with our label. |
| Return past 30 days | A separate Gorgias macro governs this — check it before answering. *(Exact rule not yet captured here.)* |
| Warranty | **Manufacturing defects only.** Customer-caused damage (chewing, drops, misuse) not covered. Always get a photo **and** order number first. |
| Store credit | Available as an alternative to a return when it saves hassle on both sides. |
| HSA/FSA | **Cannot** apply it or process reimbursement. Burst only, and an LMN can't be backdated. |
| Airline handling | **Cannot** promise gate check is free or cover transit damage. |
| Discount codes | Explain the offer and link the product, but **don't create the code** until the customer confirms interest. |
| Cancel **before** it ships | **Yes, granted on request. No fee, no cutoff clock.** The real cutoff is physical carrier pickup, not a time window. Full refund to the original payment method, posting in 1-5 business days. |
| Cancel **after** it ships | **No.** Strolee does not cancel a shipped order, does not recall it, and does not pay for a carrier intercept. Never tell a customer to refuse delivery, we don't do that. Standard path: wait for it to arrive, then request a return label. |
| Cancel **after** delivery | Not a cancellation. It converts to a return under the normal return rules. |
| Goodwill / retention / exception | **$30 is the standing amount.** Offer it without asking. Anything beyond $30 is an extreme case and goes to Atira. Don't improvise a number. |
| Restocking fee | **No set fee** — but the refund can be reduced if it comes back damaged, dirty, or used. See the wording rule under Returns. |
| What comes out of a refund | The **actual outbound shipping charge**, which varies by carrier and distance. Real deductions in the archive run $7 (accessory via USPS) up to $39, with carts generally $30-$45. Don't quote a fixed number, it depends on the order. |
| Anything outside these limits | Atira's call. Draft the reply, flag the decision, don't commit us. |


### Order changes and cancellations

**Before it ships — say yes.** Cancellation is granted on request, no fee, no questions, no
time limit. The cutoff is whether the warehouse still physically has it, not a clock. An order
can be pulled back even after the shipment notification email goes out, so a notification is
not a reason to refuse. Full refund to the original payment method, 1-5 business days.

Routinely done pre-ship: color swap, model swap, adding or removing accessories, applying a
missed discount code, and **merging two orders so they pay one shipping charge**.

- **Price went up** on a swap: email a Shopify invoice for the difference, it ships once paid. Shipping is not re-charged.
- **Price went down**: partial refund to the card.
- **Missed a discount at checkout**: apply the code and refund the difference. Don't cancel and reorder.
- **Discounts don't stack.** If they want a different one, remove and re-invoice.
- **Shipping holds are available.** The warehouse can hold to a requested ship date, adjustable any time, released on confirmation.
- **PayPal chargeback blocks the refund.** We can cancel, but can't refund until they withdraw the chargeback.

**After it ships — no cancel, and don't invent options.** No recall, no paid intercept, and we
never tell a customer to refuse delivery. Nothing in five years of tickets does either. Say
what we do instead: wait for it to arrive, then we send a return label. Offering the label
proactively is the norm. Additions become a separate order.

**Address change before it ships:** routine, free, done at the warehouse.

**Address change after it ships: we cannot do it.** Settled by Atira 2026-08-21. Don't offer to
try, don't file a request with the carrier, don't promise an attempt. You'll find 2026 tickets in
the archive where agents attempted it with FedEx and UPS — that's retired, don't follow it.

What the customer can do themselves:
- **UPS:** change it through the UPS virtual chat. Send them the tracking link.
- **USPS:** only works if they already have package forwarding enabled.
- **Tracking lags any accepted change.** The package can keep showing the old address, or even move toward it, before updating. Say so up front or it generates a second ticket.

**Wrong address the customer entered:** their cost, no free reship. Two options: return label
plus a new order, or return and reship at their expense (~$35-$55 depending on the item, plus
reshipping). Tell them to price a carrier-direct forward first and only use us if it's cheaper.
PayPal and the Shop app auto-filling an old default address are both known causes. Neither
moves the cost to us.


### The message came through empty

Some tickets arrive with no body at all, just a signature like "Sent from my iPhone," or a subject
line and nothing under it. **These get a reply, not a close.** Settled by Atira 2026-08-22: *"we
need to say no message came over just want to see if there's anything we can help with."*

Someone tried to reach us and the email didn't carry. Closing it silently means they're waiting on
a reply that never comes.

> Hi [Name], thanks for reaching out, and I'll be happy to assist!
>
> It looks like your message didn't come through on our end, just your signature. Could you send it
> over again? I'd love to help with whatever you need.
>
> Talk soon,
> Atira S
> The Strolee Team

**Blame the transmission, never the sender.** "It didn't come through on our end" is right. "You
didn't include a message" is not.

**These get auto-flagged as spam, so check the Spam view.** Confirmed 2026-08-22 on ticket
288991030 (Pauline Snyder): an empty body meant Gorgias marked it `spam: true`, so it never
appeared in the email views at all. She was a real customer with a live unshipped order asking for
an address change. **Any ticket with a real customer email and a live order in the sidebar is not
spam**, whatever the flag says. Sweep the Spam view periodically for exactly this.

**Mine the subject line and the order first.** Often the subject carries the whole request even
when the body is empty — an address in the subject on a live order is an address change, "Is this
Stroleebaby" is a question you can just answer. If the subject tells you what they want, answer
that instead of asking them to resend. Only fall back to the resend ask when there's genuinely
nothing to go on.

### Snap buttons won't click / "I'm missing screws"
There are **no screws anywhere**. Small spring-loaded metal buttons on the **UNDERSIDE** lock frame parts together. Always tell them to look underneath the bar or arm.
- Sequence: press the button all the way in with your thumb, **hold it**, slide the piece on, keep sliding until the button reaches the hole and **pops out on its own**. That pop is the click. Never tell them to line the button up with the hole themselves.
- Say the button pops **OUT**, never "up."
- **Stability Shopper cross bar (manual step 3):** buttons are on the underside of the bars **on the cart**, not on the cross bar. The two halves of the cross bar slide together and do not click into each other; the click comes from the cart's buttons.
- **Wheels into frame:** "a silver tab on each side," press and hold to slide the wheel out.
- **Double v2 rear axle:** silver button where the axle meets the frame, push and the axle slides off.
- **Common cause:** the button slipped down inside the tube during shipping, so there's nothing to press. Fix: drop a pen into the top of the tube, gentle push, the button pops back out.
- Approved comparison: "the same kind of spring button that holds a collapsable tent pole together." A cane or walker leg works too.
→ Check this **before** assuming a defect or missing hardware. Closing: Talk soon (offer to make it right if it still won't stay out).

### Won't clip open — cart (Stability Shopper)
1. Fully release the button on the handle
2. Push the handle down and back slightly to clip it in the open position, a quick swift "snap" motion helps
3. Try it with the shopping bag removed so the latching mechanism is visible
4. The small piece needs to go inside the larger piece to clip open
(Reference photo lives in Gorgias macro 220545.)

### Won't clip open — single / Baby+
1. Fully release the button on the handle
2. Push the handle down and back, quick swift "snap"
3. While it extends, don't just let the front wheels smack the ground
4. If it's open but not clipped: thumb on top of the handle, pointer finger behind it where it goes down toward the seat, and clip it open that way

### Won't clip open — Double
Gorgias macro 285887 has a troubleshooting video.

**All latch tickets:** troubleshoot before offering a return. If troubleshooting doesn't resolve it, ask for a photo of the latching mechanism. Never affirm the product is unsafe or defective.

### Folding (Stability Shopper and Pet Stroller — same frame)
1. Slightly lift up on the handle
2. Squeeze the button on the handle at the same time
3. The whole cart folds forward and clips in place when flat

**Send `stroleecarts.com/pages/stability-shopper-how-to`.** That is the Stability Shopper video
and it is the one a Stability Shopper owner gets, every time.

**Never send `personal-shopper-assembly` to a Stability Shopper owner.** The Personal Shopper is a
discontinued product we no longer sell. Sending its video tells someone who just bought a current
cart to follow instructions for a cart that isn't theirs. Corrected by Atira 2026-08-22 after that
link went into a draft for a customer whose order was a Stability Shopper V2. The
`personal-shopper-assembly` page is only ever for someone who actually owns a Personal Shopper.

### Wheel complaints (bumps, rough surfaces, tipping)
Do **not** affirm the complaint, agree there's a flaw, validate tipping/flipping claims, or offer upgraded wheels free. Don't breeze past what they said either, that reads as dismissive.
Approved phrasing:
> The standard wheels that come with the stroller are designed for smooth, everyday surfaces. For parents who are more active and out on all kinds of terrain, we created the upgraded wheel set as an add-on. They were designed specifically for surfaces like sidewalks, parks, and rougher outdoor areas so you get a smoother, more comfortable ride.
Never compare the current part unfavorably to the upgrade ("handles curbs much better" is out). Frame it as a lifestyle choice, not a fix.

### Air travel
Carts do **not** fit in an overhead bin (V2 Shopper folds to 25.5" tall, that's what rules it out). They can take it through the airport and gate check it.
- **Never promise gate check is free.** Fees and policies vary by airline. Tell them to check with their airline.
- **Never imply airline damage is covered.** Once it's in the airline's hands, Strolee doesn't cover transit damage. Say so plainly and kindly.
- Gorgias macro 284330 ("Overhead carry on bin single") claims strollers DO fit overhead. It's stale and contradicts recent replies. Don't reuse it.
(Strollers — Destination and Linq — do fit overhead bins. The carts don't.)

### Delivered but not received

**Verify before you remedy.** A large share of these resolve as "found." First reply confirms the
shipping address on the order, sends the carrier's delivery photo, and asks whether there's a
building office or front desk and who signed.

**If the carrier shows delivery to the address they entered: no reship, no refund.** They open
the case themselves with their tracking number (FedEx 1-800-463-3339 / fedex.com). Don't concede
when they say the carrier blamed us. Once it's in the carrier's hands, the carrier investigates.

**But if tracking shows lost or stalled rather than delivered, we do reship.** That's a real
distinction and it's easy to miss. "Delivered to the right address" and "the carrier can't find
it" get opposite answers.

**Blocks on any reship:** an open chargeback, or an order already refunded.

→ Closing: **Take care** once they're directed to the carrier. Talk soon only while you're still
asking for information.

**Confirm the shipping address before any reship.** Always, even when the order shows one and
even when the address was never the problem. Ask, get it back in their words, then send. Settled by
Atira 2026-08-22.

**Carrier never attempted, package returning to sender.** Different from both a lost package and a
delivered one, and it is ours to fix. The customer did nothing wrong and the address is fine. Reship
free, and **switching carrier on the reship is reasonable** when the customer asks, since the first
carrier is the thing that failed. Offer the refund alongside it if they'd rather be done. Don't make
them open a carrier case for a package that is coming back to us anyway.

**Package comes back to us — reship or refund? Settled, and it turns on WHY.** Researched
2026-08-22 across the archive; the pattern is Abbey's and it's consistent through 2026:
- **Returned / undeliverable / no reason given → reship it.** *"It looks like it came back to us. We will get this sent out again today"* (284138955). *"I'm not sure why it was sent back to us. I have processed your order to be reshipped out to you ASAP"* (258353800). Verify the address with them first if anything looks off (269468908).
- **The customer REFUSED the delivery → refund it**, and tell them they're welcome to reorder. *"Your order was sent back to us yesterday and we issued the refund yesterday. It said the order was refused"* (256766698).

So: refused means they changed their mind, and that's a refund. Anything else is the carrier
failing, and that's a reship at our cost.

**Stalled tracking is not "delivered but not received."** If the last carrier scan is days or
weeks old and the package was never marked delivered, that is a lost/stalled shipment and **we
reship free**, or refund in full if they'd rather not wait. Say which it is and let them pick, in
one message. Two live examples on 2026-08-22: a FedEx cart last scanned 8/12 with a 8/14 estimate,
and a UPS cart to Hawaii last scanned 7/31. Neither should have been left with the customer waiting.

**Name the carrier off the order, never off memory.** An agent told a Hawaii customer on 2026-08-15
that a case had been opened with **USPS** when the order had shipped **UPS**. Also note that Hawaii
does not always go FedEx SmartPost, that UPS order is the counterexample.

**Policy note:** through about March 2026 Strolee opened carrier cases itself, waited out a 5-7
business day investigation, then reshipped or refunded at its own cost. That stopped. Use the
current posture, not the old tickets you'll find in search.

### Missing item from a shipment

**This is our problem, not the carrier's — the opposite of a lost package.**

**We are usually not missing things.** Settled by Atira 2026-08-22. Treat a missing-item report as
"it hasn't been found yet," not as "we failed to pack it." Do not open by conceding the item is
missing and do not lead with a free replacement.

**The check-first rule covers every item, not just the cup holder.** Wheels, adapters, bags,
organizers, all of it. The cart ships fully assembled with the wheels packed loose for the customer
to pop on, so a wheel sitting in the box padding is exactly the kind of thing that gets missed. Use
the missing cup holder macro's shape for any of them: ask them to confirm it isn't in the packaging
**as a favour**, normalise it by blaming shipping and the object, and offer nothing until they've
answered. Wording and reasoning under "Missing cup holder" below.

**Check the packaging first, every time.** The parent cup holder settles into the lower basket
and blends in. It is the number one missing-item ticket and most resolve as found. Adapters,
wheels, seat liners and organizers ship inside the main box.

If it's genuinely missing: **reship the piece free. No return, no photo, no waiting period.**

Common false positive: the item was never on the order. Quote the order lines and offer an
invoice for it.

**Missing cup holder — use this wording.** From macro **262668 "Missing Cup Holder"**, 223 uses,
and Atira picked it over a draft of mine on 2026-08-22 because it *"sounded more pleasant."* Match
this register:

> Thanks so much for reaching out and I would be happy to assist! Can you please just confirm it is
> not in the lower basket for me? Many times in shipping the cup holder ends in the lower basket &
> blends right in so people don't notice it at first :)- I look forward to hearing back getting this
> resolved for you.

What makes it land, and what to carry into any "please go look for it" reply: it **asks a favor**
("can you confirm it for me") instead of issuing an instruction ("have a look in the basket"), and
it **normalizes the miss by blaming shipping and the object**, not the person. It also doesn't
front-load the remedy. Offer to send a replacement only after they confirm it isn't there.

### Wrong item shipped

**Ask for photos of what they received before offering any remedy.**

- **Our error, low-value item:** ship the right one immediately, they keep or dispose of the wrong one. No return.
- **Our error, high-value item:** prepaid return label emailed and the replacement arranged. We pay return shipping.
- **They ordered the wrong thing:** normal return terms, refund reduced by actual shipping both ways.

### Damaged in transit

**Photos or a short video are mandatory before any remedy.** No exceptions, both shops, every agent.

The remedy ladder, in the order actually used:
1. **Self-fix if it just came apart in shipping.** Small screwdriver down the tube to pop the silver snap piece out, then slide together until it clicks. This resolves a lot of them.
2. **Replacement part, free** — belly bar, snack tray, footrest, wheel, cup holder, bassinet, seat liner
3. **Full replacement unit.** For strollers this requires a photo of the **safety harness straps cut off** first. That's a hard safety gate, never waive it. Carts generally need no return.
4. **Partial refund instead of a replacement** — the archive shows $20, $25, $50, $75
5. **Full refund or return**

- **Damaged box, undamaged product = no remedy.** Ask them to open it and confirm first.
- **Past 30 days it's warranty only** (replacement part), not a return or refund.
- **Free and gift items aren't replaced** if the product still works safely.

### Delays

Actionable the moment tracking shows no movement or a stalled scan. Current practice directs the
customer to the carrier.

- **Expedited paid but not met:** refund the **difference** between what they paid and standard shipping, not the whole amount.
- A delay that will miss their date is grounds for cancel and full refund pre-delivery, and a late arrival has been accepted as a return reason.

### Wrong address at checkout
The customer's mistake. Strolee will almost never reship or replace, especially on high-ticket items. If they claim they updated it, the address on the order at checkout is what matters, and the carrier delivered where it was told to.
Be warm but direct. Clarify the facts (correct carrier, what address was actually on the order). **Don't leave the door open** for a resolution from Strolee's side. Closing: Take care.

### Warranty

**2 years from purchase**, standard on every product. Public terms at
`stroleecarts.com/pages/warranty` and `stroleebaby.com/pages/warranty`.
- **$24.99 buys an extension to 5 years total** (not 2+5). Can be added after shipping by emailed invoice, and removed with a refund on request.
- **No registration exists.** It's tracked digitally against name, address, or order number. Tell customers there's no paperwork to keep, they ask constantly.
- **It does not transfer.** Secondhand owners aren't covered.
- **Amazon orders are honored in practice** with an Amazon order ID.

**Covers manufacturing defects only. That is the whole rule, and it applies to every part
equally** — belly bars, upgraded wheels, buckles, frames, all of it. There is no list of parts
that are covered and parts that aren't. The archive looks contradictory (a belly bar sent free one
week and sold for $17.90 the next) only because the real question was never the part.

**The real question is always: does the evidence show a manufacturer defect?**
That's a judgment call on the photo or video, and it's the call to actually make rather than
reaching for a rule. Get the photo and order number first, every time, then decide.

The test used in past replies: **arrival condition.** "If it had come like that we would have
replaced it." Something that broke in normal use after months is not the same as something that
was wrong out of the box.

Not covered: customer-caused damage, pet damage, mold from storage, normal wear, secondhand and
resold units.

**Amazon purchases are honored** with an Amazon order ID.

**Required before processing — all four:**
1. **A photo or short video of the problem.** For carts ask for video *from the side* so the locking mechanism is visible. For folding complaints, video of the fold attempt.
2. **Order number. Hard requirement.** *"We need her order number."* — Atira, 2026-08-22.
   A name, an old email address, or "I bought it last July" is **not** the order number. Those are
   leads for looking it up, and the lookup has to actually happen and come back with a real order
   before anything ships. Until then the claim is incomplete, and a draft that says "that's
   everything I needed" is false. For gifts, the purchaser's name or email gives you the lookup, not
   the answer. If it genuinely can't be found and the part is small, offer the $3 shipping invoice.

   *(An earlier version of this line, softened by me on 2026-08-22 to "name, address, or order
   number," was wrong and caused a bad draft. Restored.)*
3. **Confirmed current shipping address** — these often changed since purchase
4. **Whole-stroller replacements only: a photo of the seat belt straps cut off. Mandatory, no exceptions, ever.** It is an insurance requirement and it is not waivable, no matter how sympathetic the ticket. Nothing ships until the photo is in hand. The old unit is not returned, they dispose of it.

**When the order genuinely can't be found and the part is small: offer the $3 shipping invoice.**
Atira's wording, 2026-08-22: *"Or since it's such a small piece we can send you an invoice for $3
just to cover shipping and since we can't tie it to an order in our system."* It gets a customer
their buckle or clip without waiving the proof-of-purchase rule, and it beats a dead end.

**What ships free:** any defective part, or the whole unit. **There is no dollar threshold** — full
strollers and carts at $195-$369+ ship free under warranty. Next business day, 2-4 days transit.

**If the model is discontinued and no parts remain:** no free replacement. Offer a discount on the
current model and they keep the old unit. The archive's range: **$40 off carts, $50-$60 off
Baby+/Linq/beach, $100 off Double Lite, $150 off Double V2.** Where the warranty is live but the
exact model is gone, send the current-generation equivalent free instead.

**Customer buys:** belly bars ($17.90), upgraded wheels, accessory bags and organizers, anything
sold as an add-on.

### Most common failures — what actually breaks

Ranked by replacement parts arranged, Jun 2025 to Aug 2026:

| Rank | Part | Tickets |
|---|---|---|
| 1 | **Harness buckle / clasp** | ~100 |
| 2 | Rear axle | ~45 |
| 3 | Wheels (front most often) | ~40 |
| 4 | Whole stroller or cart | ~35 shipped free |
| 5 | Snap buttons | ~20 (plus many resolved by the pen fix) |
| 6 | Belly bar | ~18 (mostly sold, not replaced) |
| 7 | Frame | ~10 |

The harness buckle is the number one failure by a wide margin, and the most common trigger for a
whole-unit swap because the buckle housing isn't separately replaceable on older models.

### Known fixes — try these before authorizing anything

Every one of these closes a ticket with nothing shipped.

- **Stroller won't stand up (one of the highest-volume tickets there is):** the kickstands ship stowed so they don't get damaged in transit and need releasing. Push the small bar in, rotate 180°, and it drops into place. The Double has one per side, singles have one total. Re-stow before gate checking.
  **Always include the link and the timestamp:** `https://stroleebaby.com/pages/strolee-double-v2-how-to`, **shown at the 2:40 mark** of the assembly video. Abbey includes both every time and it's what makes the reply land.
  **Never open with "nothing's wrong with it."** Kickstands genuinely do arrive **bent or missing** (tickets 284843999, 284844789, 269453583, 286717635), so that opener is dismissive *and* sometimes factually wrong. Give the instruction, then offer: if it still won't come out, send a video and we'll sort it.
- **Cart won't stand:** the two small bars below the handle slid in during shipping. Pull them out further.
- **Snap button missing, arm or crossbar won't lock:** the button slipped down inside the tube. Drop a pen or screwdriver in the open end and push gently, it pops back out. Then press it in, slide the bar on until the button reaches the hole and pops out on its own.
- **Cart won't fold:** lift the handle slightly *and* squeeze the handle button at once, then push **forward and slightly down**, not backward. On carts with a green arrow button: green arrow unlocks it to roll, the handle button folds it.
- **"It collapses / it won't lock":** **if red is showing at the side locking mechanism, it is not locked. No red = locked.** Test by flicking the handle or pushing the basket down while holding the handle. Strollers show a red bar on the side when open and locked.
- **Cart won't open:** lift the handle **all the way**. Not lifting fully is the common failure.
- **Stroller won't open:** quick upward snap, thumbs in front of the handle, index fingers behind. The latch is the small circle directly under the handle.
- **Front wheel "broken" or won't turn:** it's bound in the frame. Hold the silver tab on the back of the wheel mount and pull the wheel out to release it. Also check the swivel lock.
- **Wheel swap (any):** press and hold the silver tab where the wheel meets the frame, it slides straight out. No tools.
- **Rear axle swap:** push the small silver tabs both sides, slide the old out, slide the new in.
- **Brakes "don't work":** by design with stair wheels on. Brakes only work with standard, beach, and upgraded wheels. This is a feature question, not a defect.
- **Nuna car seat won't seat:** set it onto the adapters from behind, lined up, then squeeze the foot area slightly and it slides in.
- **Front wheels lift or wobble when empty:** normal with no weight in the seat.

### Customer-caused damage
Decline, but always with a paid path forward. The test used in replies is arrival condition:
"if it had come like that we would have replaced it." Photo or video settles it.
Pet damage, mold from storage, and handle-cover wear have all been declined with a discount or
advice offered instead.

**Out of warranty:** no free part, no free unit. Offer the current-model discount, they keep the
old unit, invoice emailed.

### Returns and refunds

**Read the delivery date off the fulfillment record, not the ship date.** On a Shopify fulfillment,
`created_at` is when it shipped and the delivered date is the later timestamp once
`shipment_status` reads `delivered`. Using the ship date makes an order look older than it is. On
2026-08-22 that difference was three days on a customer who looked two days past the window and was
actually on day 29. Check the delivered date every time before telling anyone they've missed it.

**The window is 30 days from DELIVERY, not from the order date.** Enforced hard, and denials
cite tracking and order timestamps. A customer who asked a question inside the window but didn't
act on it does **not** keep the window open. Pre-orders start the clock when the item arrives.

**This holds even when we were the ones waiting on them.** If an agent asked for the packaging and
condition confirmations inside the window and the customer answered weeks later, the window is
still closed. Do not talk yourself into honoring it because the thread started in time. Confirmed
by Atira 2026-08-22 on an order delivered 7/2 where the customer answered our 8/1 question on 8/21.

**Past-window recovery offer: $40 off a Beach Cart, and we do not exchange.** That is the line to
hold. Say the window has closed, say it kindly, then put the $40 offer in front of them.

**Eligibility — these are pass/fail, not negotiable:**
- **No original box = automatic no.** Not one exception in the archive. The box is a custom size and the cart can't be resold shipped in anything else. Say the reason, it lands better than the rule.
- Tags and safety information intact, item new and resalable
- **Tested indoors only.** Used outdoors = no. Used at all = no.
- **Open Box carts are final sale**, returnable only if genuinely defective
- **Amazon orders return through Amazon**, never through us
- **Promo and bundle orders come back whole**, free items included
- Standard wheels included in a stroller's price can't be returned separately

Failing a condition can mean a **reduced refund** rather than a flat refusal. That's a real option.

**Shipping comes out both directions, at our actual carrier cost, not the $8.95 they paid.**
The $8.95 is a partial subsidy, and free-shipping orders are still charged the real cost. Typical
deduction is **$32-$45 on a cart or stroller**; accessories run as low as $7. Don't publish a
fixed number, it varies by distance.

**We eat the shipping when** the returned item inspects as defective (full refund including
shipping), or on compassionate grounds like a death in the family.

**Restocking and condition — settled policy, and the wording matters.**
There is **no set restocking fee**. But if an item comes back damaged, dirty, or used, **the refund
is reduced** to account for it. Both halves are true at once, so how you say it matters:

- **Never write "we don't charge a restocking fee."** It's an absolute we can't always honor, and it's the sentence that creates the argument later.
- **Never quote a fee or a number** for it either.
- **Do tie the refund to condition, warmly and without a threat.** Use something like:
  > Once it's back with us and checked over, we'll get your refund processed based on the condition it arrives in.
- If they **ask directly** whether there's a restocking fee: *"There's no set restocking fee. The refund is based on the condition it comes back in."* True, answers them, and keeps the option open.

This vagueness is deliberate. It is not hedging, and it is not something to "clean up" into a
cleaner promise.

**Deliver the whole return in ONE message, not three.** Conditions, the shipping deduction, the
eligible amount, and what happens next all belong in the same reply. Splitting it into
confirm-then-quote-then-label is three exchanges for one outcome.

**Don't invent concessions to soften a no.** If a customer argues the item is defective and
therefore they shouldn't pay return shipping, state the policy and process the return. Don't
offer a conditional full refund that isn't policy just to make the reply feel kinder. Warmth
comes from acting quickly, not from giving ground nobody authorized.

**Reference point for the deduction:** a $519 two-stroller order (SB13574) refunded **$443.74**,
so **$75.26** came out for shipping both ways. Useful for sanity-checking an estimate, not a rule.

**Process, in this order:**
1. **Troubleshoot first, or pitch the accessory that solves it.** Since Aug 2026 this comes before any label. Beach wheels, stair wheels, the folding video.
2. Confirm three things: original packaging with tags, indoor-tested only, and the reason
3. **It's two steps, and the split is explicit confirmation.**

   **Step one, before any label:** state the policy and the three conditions and ask them to
   confirm. Full refund isn't available because shipping both ways comes out. Original packaging
   with the product tags attached, tested indoors only, and the reason for the return. Multiple
   items all come back together. Closing: **Talk soon**, because we need something back.

   **Step two, only once they have explicitly confirmed all three:** send the label and state the
   exact amount in the same message. **Write the figure as `$__` so Atira can paste the real number
   in.** Never omit the amount because you don't have it, and never guess at it. Settled 2026-08-22:
   *"we need to tell her what refund amount she is eligible for, you can just leave a blank line
   like this so i can paste the amount __ and tell her once we receive the items she will be
   refunded."* Don't ask them to agree to the figure, that's a round-trip
   for nothing. Approved shape (Natalie, SB13574): *"I just emailed you the labels for both
   strollers. Once we receive the items back you will be refunded. This order is eligible for a
   refund of $443.74."* Then the assist line and **Take care**.

   **When they arrive already confirming the conditions, the two steps collapse into one message,
   and step one's explanation has to come with it.** Someone who writes in saying "new in box,
   never used, she won't use it" has answered step one unprompted, so making them confirm it again
   is a wasted round-trip. Send the label and the amount. **But they have still never been told
   that shipping comes out**, so explain the deduction in that same message before naming the
   figure. Skip the round-trip, never the explanation. Corrected by Atira 2026-08-22: *"you need to
   explain that we deduct shipping both ways the amount since we haven't told her that before."*

   Check the thread before deciding. If an earlier reply already stated the deduction, don't repeat
   it, just give the label and the amount.

   **What counts as confirmation:** they answer the conditions. "I have the original box, tags are
   on, only used inside." **What does not count:** "I feel confident I can get it back in the
   box," "I still have the packing," or anything about intent rather than fact. Intent is not
   confirmation. Send macro one.
4. Email the prepaid label. **It comes from a third-party sender and frequently lands in spam** — tell them to check.
5. Carts and strollers go **FedEx**, accessories go **USPS**
6. Inspected on arrival. **Refund within 5 business days of receipt**, then 3-4 business days to reach their card.
7. **A chargeback stops everything.** The refund then runs through PayPal or the card issuer, not us.

Tone: "to be eligible for a return," not "you must." Not "can you please confirm all of that,"
instead "if you can confirm all of that, just let me know and I can get a return label sent over
to you." Multiple items all come back together.

**Past the window:** exceptions are **very rare**. Use judgment and keep it tight. The default
recovery offer is store credit or the **$40-off V2 upgrade** (they keep the old cart). Through Jan
2026 the line was "resell it on Facebook Marketplace" — that's retired, don't reuse it.

### Store credit and partial refunds

**Store credit is on, and it's the preferred outcome.** The order of preference is
**store credit > refund.** When a resolution could go either way,
lead with store credit. It keeps the customer, avoids return shipping on both sides, and avoids
handling a returned unit.

Whether to offer it at all depends on the situation, but when you're offering something, offer
this first. The archive shows $249 for a discontinued cart, full order value as an alternative to
a shipping-reduced refund, and a $40 non-expiring credit as goodwill.

**Returns come back. All of them.** Settled by Atira 2026-08-22: *"We definitely need all items
returned."* If we are refunding a purchase, the item ships back to us, whatever it costs and
however small the item is. Do **not** draft "keep it and we'll refund you anyway," do not decide
the return shipping isn't worth it, and do not offer a keep-it as a shortcut on a frustrated
ticket. The older archive has one-off keep-its in it. They are not the policy and they are not
yours to reach for.

The one carve-out is unchanged and is not a return at all: **warranty defect replacements and
missing-item reships require nothing back.** That's a replacement, not a refund. Everything on the
refund side comes home.

### Wrong car seat adapter — find out what they actually have first

**Don't assume they ordered the wrong one.** They may have the right adapter and be installing it
wrong. The Nuna install in particular catches people: set the seat onto the adapters **from
behind**, line it up, then squeeze the foot area together slightly and it clicks in.

So the first reply asks **which car seat they have**, not which adapter they want.

**Adapters are exchanged**, unlike carts. This is Abbey and Shad's standing practice, not a new idea:
- Abbey, ticket 284184228: *"I was able to correct the order :) The Graco adapters a little bit more so I emailed the invoice over."*
- Abbey, ticket 285584142: *"I just emailed you the invoice with the correct adapter."*
- Shad, ticket 223269165: *"Yes, you can exchange the car seat adapter if it is not the correct one :)"*

**The math:** Nuna / Maxi-Cosi / Cybex / Clek / Britax = **$39**. Chicco / Graco = **$44**.
The difference is **$5**, invoiced if they're moving up, refunded if moving down.

Refund is the second option, and **say that return shipping comes out of it before they choose**.

### Exchanges on carts and strollers — we don't do them

(Car seat adapters are the exception, see above.) There is no exchange or trade-in program on carts. Three substitutes:
1. **Color or small-item swap:** return label plus a **$17.90 invoice** ($8.95 back + $8.95 out), customer pays first
2. **Upgrade offer:** $40 off the new V2, they keep the old cart, personalized code
3. **Cross-model swap:** pay the price difference, keep the accessory

**Defect replacements are different** — we ship the replacement and do **not** require the original back.

**A full refund on a warranty stroller requires the harness straps cut, with a photo. Mandatory,
no exceptions, ever.** Insurance requirement, not waivable. Nothing ships or refunds without it.

### V1 customer hits a V2-only limitation
Always include the $40 V2 upgrade offer alongside whatever else you're saying (return, compatibility answer). Link the V2 product page. Not a hard sell, just an option. Don't create the code until they confirm.
Don't mention V2-only accessories to a V1 customer otherwise, they can't use them and it just generates another ticket.

### Shopify Collabs approved affiliate

**Affiliates can earn commission OR a discount.** Both are on the table, so don't describe it as
commission-only.
Real welcome, not the brush-off. Cover: welcome to the Strolee family, they're approved and set to start sharing, **their actual affiliate link, their actual discount code and what it gives their audience, and their actual commission rate — pulled from the ticket, never described generically**, that they can share on social, blogs, stories, wherever works, and that there's no required product, they highlight whichever Strolee speaks to their audience.
(Atira may override the "no required product" line to point someone at a specific product. Follow her direction when she does.)
Closing: Talk soon on the first reply.

### Unsolicited influencer / creator / UGC / ambassador pitch

**Tell it apart by the ticket itself.** A pitch is a fresh inbound DM or comment forwarded into
Gorgias — subjects like "Direct message with [handle]," "Message from [name]," "Mention in [x]'s
story," or a creator describing their following and asking to collaborate. An **approved affiliate**
ticket is a Shopify Collabs approval notification that opens with "Your application has been
approved" and carries a link and code Shopify already generated.

Standard answer to a pitch: we don't currently have an ambassador or partnership program, but it's
something we hope to bring back. **We aren't offering gifted or paid collaborations, only
commission on sales.** Closing: Take care.

Application pages: `stroleecarts.com/pages/brand-ambassador` (carts and pet) ·
`stroleebaby.com/pages/collab` (baby). Both route into Shopify Collabs.

**Gifting is closed.** Settled by Atira 2026-08-21. It was a real program through 2025, it isn't
one now. Don't offer free product, and don't hint that it might be possible.

**Press and media** currently get the same handling as a collab pitch. No separate process exists.

**Most of this category is not spam.** The advertising tickets are mostly genuine comments on
Strolee's own ads ("love mine," "I use mine for groceries") and deserve a warm brief reply. The
collaboration tickets are real pitches that get the standard decline. Actual throwaway spam is a
small minority.

### Wholesale and bulk

**There is a real wholesale motion.** It's case-by-case quoting, not a published program, and it
was missing from our notes entirely. Never decline a bulk request outright — ask which products and
roughly what quantity, then quote.

Tiers seen in the archive:
- **3-9 carts:** accessories 35% off, Stability/pet bundle 30% off (~$182/unit)
- **10+ carts:** another 5% off (accessories 40%, bundle 35%, ~$169/unit)
- Discounts start as low as **3 units** and cap around **50% off** at high volume
- Accessories are discounted harder than carts, they're higher margin

**Private label** (client logo on the cart itself): 30% deposit, **minimum 50 units**, 45-60 day
lead time. Cheaper workaround with no stated minimum: embroider the logo on the organizer accessory
only and sell it as a bundle.

**Distribution is otherwise closed.** We sell on our own sites, Amazon, and TikTok. Nowhere else.

**TikTok Shop: we can't do anything on that side.** Shopify Collabs codes work only on our own
sites. We can't issue TikTok Shop codes, samples, or collaboration links. Say so plainly rather
than offering to look into it.

### HSA/FSA
Strolee can't do it. Point to Burst. See Part 2.

**Can it be done AFTER the purchase? Almost never — settled 2026-08-22** from
`stroleecarts.com/pages/fsa-hsa`. The page states: *"An LMN must be dated on or before the purchase
date, and clinicians cannot backdate one (IRS rule)."* So a customer cannot go get a letter after
buying and claim retroactively.

**The one exception, quoted from the page:** *"if you already had an LMN dated on or before your
purchase that covers your Strolee stroller, send it through and Burst can file your claim."*

So the right answer is a question, not a flat no: **did you already have an LMN dated on or before
the day you ordered?** If yes, Burst can still file it. If no, it can't be done for that order.
This resolves the contradiction where two replies said "not after the order" and a third promised
reimbursement.

---

---

## PART 4 — SETTLED, AND STILL OPEN

**Consistency is the default, not a straitjacket.** These are the answers to reach for so that two
customers with the same problem don't get two different answers. They are not a reason to give
someone a worse experience than the situation calls for. When a ticket genuinely warrants more,
give it more and say so in the draft. The thing to avoid is being *random* — not being generous.

Atira is the only person doing customer service, so every draft passes her eyes anyway. "Flag it"
just means say so plainly in the draft write-up, not route it somewhere.

### SETTLED — the default answers

**Warranty covers manufacturer defects only. Every part, no exceptions list.**
The question is never "is this part covered," it's "does the evidence show a defect." Always get
the photo and order number first, then make that call. Amazon purchases are honored.

**One-off exceptions do not get written down here.** When Atira approves something above the
standing amounts for a particular customer, that is a decision about that customer, not a new rule.
Recording it turns it into a precedent I'll reach for again, which is exactly how the archive's
random $10-to-$249 spread happened. Settled by Atira 2026-08-22: *"remove the $100 discount from the
playbook we cant offer that this is an exception."*

The standing numbers below are what I offer. Anything beyond them gets drafted only when Atira has
said so for that ticket, and it stays in that ticket.

**Exceptions, goodwill, and retention: $30.**
That's the default reach. Offer it without hesitating. Going above $30 is Atira's call in the
moment — draft it, and say in the write-up that it's above the usual and why. What this replaces
is the archive's random $10-to-$249 spread, not her judgment.

**Store credit is the preferred outcome: store credit > refund > taking it back.**
Whether to offer anything depends on the situation, but when offering, lead with store credit.

**Restocking: no set fee, but the refund reflects condition.**
Never write "we don't charge a restocking fee," never quote a number, tie it to the condition it
comes back in. Full wording rules under Returns. The vagueness is intentional.

**Cut harness strap photo: mandatory, no exceptions, ever.**
Insurance requirement, not waivable, however sympathetic the ticket. Nothing ships or refunds
until the photo is in hand.

**Porch theft: we do nothing.**
Confirmed delivery to the address they entered, then taken, is not ours. No reship, no refund, no
discount. They open the case with the carrier. Warm, direct, no door left open. Closing: Take care.

**Returns run 30 days from delivery.** Exceptions past it are **very rare** — judgment, kept tight.

**Address changes: before it ships, yes. After it ships, we cannot.**
Don't offer to try. Ignore the 2026 archive tickets where agents attempted it with the carrier.

**Gifting is closed.** Don't offer free product or hint it might be possible.

**The seated cart has no date. Be vague, every time.** Never repeat "end of summer" or any horizon.

**Open box warranty term: not tracked.** Not worth a rule.

### STILL OPEN

**Claude to research, not Atira's to answer:**
1. ~~Package comes back to us~~ — **ANSWERED 2026-08-22**, see Delivered but not received.
2. **Expedited shipping** — check what the website actually offers at checkout. Still open.
3. ~~HSA/FSA after the purchase~~ — **ANSWERED 2026-08-22**, see HSA/FSA.
4. ~~How customers reach the Linq page~~ — **ANSWERED 2026-08-22.** The page is live at
   `stroleecarts.com/pages/strolee-linq`, it still says the system *"allow[s] families to instantly
   link two single strollers to form a double,"* and it is **not in the site navigation** anywhere.
   Nobody is clicking through to it, so they're arriving from Google or old links and emails.
   Removing it from the menu would change nothing. **The page itself has to be edited or taken
   down** — that's the only thing that stops these tickets. Atira's call.

**Lower priority, still unsettled:**
5. **Warranty page says "no fine print"** and lists no exclusions, while pet damage, mold, wear and
   secondhand are all declined.
6. **Refund policy page says 30 days from purchase**, contradicting the delivery rule above and the
   home-trial page.
7. **Restock notify-me** — every reply gives a vague ETA or points at the email list. If a real
   waitlist exists, nobody uses it.

### One warning about mining the archive yourself
**Old tickets contain replies that break current rules.** The archive has replies promising gate
check is **free of charge** — directly against the standing rule never to promise that. It also has
"resell it on Facebook Marketplace" as a past-window offer, now retired. Mine the archive for facts
and policy. Never for voice, and never assume a past reply was correct.

## PART 5 — SAVE WHAT YOU LEARN

Anything you looked up that wasn't here goes into Part 2 or 3 **in this session**, before you finish.
A correction from Atira about *how to work* goes into the skill file. A correction about *a fact* goes here.
The next session should never re-look-up something this one already found.
