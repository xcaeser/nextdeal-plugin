---
name: strategy-and-projects
description: Review the IT strategy, project portfolio and roadmap of an M&A deal from the deal's folder (steering packs, project lists, the project ledger, business cases, integrator contracts, the business plan): rebuild each project's history across every version of its plan, its true cost to complete, and what the business plan depends on, then answer with one decision of three options. Use when asked about IT strategy, the project portfolio, the roadmap, a programme's real status, or cost to complete.
---

Run `deal method strategy-and-projects` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
