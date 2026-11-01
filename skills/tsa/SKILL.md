---
name: tsa
description: Work out the transitional services of an M&A deal from a folder of documents (the seller's TSA schedule or term sheet, the intra-group services agreement, the cost allocations and recharge it replaces, the service level schedule, and once it runs the monthly service reports and invoices): each service with its scope, charge basis, term, exit trigger and exit plan, what each charge earns over the cost it replaces, what the business depends on that no service covers, and what leaving costs; write it into the deal and answer with one decision of three options. Use when asked to review, draft, price or negotiate a TSA, a seller's TSA offer, its service levels and credits, its exits, a TSA invoice or month, or the stranded cost behind it.
---

Run `deal method tsa` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
