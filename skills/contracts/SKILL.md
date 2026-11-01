---
name: contracts
description: Review the customer and supplier contracts and licences of an M&A deal as due diligence and separation see them, from the deal's folder of documents (the contract schedule, licence schedules, the contracts themselves clause by clause, the cost base and licence usage): parties, term, notice, renewal, change of control, assignment, indexation, minimum commitments, exclusivity and data protection, what transfers, what needs consent, what breaks on a change of control and what a true-up costs; write the contracts into the deal with their Day 1 treatment, rate the dimension and answer with one decision of three options. Use when asked to review, schedule or reconcile a deal's contracts or licences, its vendor agreements, consents and change-of-control clauses, or what happens to each contract at Day 1.
---

Run `deal method contracts` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
