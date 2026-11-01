---
name: intake
description: Read a deal folder or data room as the first step of a technology M&A engagement: index every document, map each to a dimension, say what is missing, and draft the request list. Use when a deal folder is new, when documents are added to a VDR, or when asked what is in the data room or what to ask the seller for.
---

Run `deal method intake` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
