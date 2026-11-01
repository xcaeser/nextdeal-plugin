---
name: target-screening
description: Turn a long list of possible acquisition targets into a ranked short list from public material only: set criteria and weights before reading the names, score each company with cited evidence, test how far the ranking depends on the weights, and answer with one decision of three options. Use when asked to screen targets, build a long list or short list, or find acquisition candidates.
---

Run `deal method target-screening` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
