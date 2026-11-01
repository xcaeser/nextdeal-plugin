---
name: tech-platform
description: Review the product technology of an M&A deal, the product, its production estate and recovery, and the engineering toolchain, from the deal's folder (architecture documents, repositories, SBOMs, cloud bills, API specs, load tests, incident logs), going as deep as the material allows and saying what each finding rests on: scalability against the plan's load, architecture, technical debt, delivery, APIs and open source licences, then write it into the deal, rate the dimension and answer with one decision of three options. Use when asked whether the platform scales, about technical debt, code quality, architecture, open source risk, API quality, or what it costs to serve a customer.
---

Run `deal method tech-platform` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
