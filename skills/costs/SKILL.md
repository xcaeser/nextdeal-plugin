---
name: costs
description: Analyse the technology cost base of an M&A deal, by estate and by line of the P&L, from the deal's folder of documents (the seller's IT cost summary or budget, the general ledger, the payroll, the contracts and their annual values, licence invoices and cloud bills, the parent's recharge), reproduce it from the rawest of them, reconcile it category by category, work out what IT costs today, standing alone and after the deal, what the deal costs once and what it is worth, write it into the deal, rate the dimension and answer with one decision of three options. Use when asked what IT costs, to check or normalise the seller's IT cost base, for the standalone or stranded cost, the one-off cost of separating or integrating, what the price should carry for IT, or the IT line of the deal model.
---

Run `deal method costs` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
