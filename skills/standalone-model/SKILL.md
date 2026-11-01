---
name: standalone-model
description: Work out what a business costs to run on its own once its parent is gone: every service the parent gives, priced bottom-up and not by the recharge, the one-time cost of standing it up, the bridge from reported to standalone, and one decision of three options. Use when asked for standalone cost, dis-synergies of a separation, the pro forma EBITDA of a carve-out, or what the recharge really covers.
---

Run `deal method standalone-model` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
