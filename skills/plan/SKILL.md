---
name: plan
description: Write the plan of an M&A deal from a folder of documents (the SPA's closing conditions and dates, the TSA schedule with its services, terms and extension rights, the seller's cut-over plan, the buyer's integration memo or hundred-day plan, the integrator's quotes, the holiday calendars) and from what the other workstreams decided and found: the milestones and key dates, the exits and cut-overs by workstream with their owners and what they wait for, the actions of the first hundred days, the Day 1 runbook with its checks and rollbacks, the knowledge transfer the TSA services need, then one decision of three options on the pace. Use when asked for a plan, a 100-day plan, a Day 1 plan or runbook, a cut-over plan, an integration roadmap, a TSA exit plan, a separation plan, or what is late and what the timeline can hold.
---

Run `deal method plan` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
