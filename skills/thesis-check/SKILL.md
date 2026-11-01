---
name: thesis-check
description: Test an investment thesis before a full diligence: write its chain of cause and effect, find the technology claims hidden in commercial ones, test each cheapest first, run a pre-mortem and answer with one decision of three options on whether to go on. Use when asked whether a thesis holds, for a pre-mortem, a bid or no-bid view, or what must be true for a deal to work.
---

Run `deal method thesis-check` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
