---
name: data-and-compliance
description: Review privacy, data residency and sector rules for an M&A deal from the deal's folder (record of processing, processing agreements, transfer documents, breach log, sub-processors, audits, cloud regions): map which rules apply, trace the data through the systems, write a control per rule and findings for every gap, and answer with one decision of three options. Use when asked about GDPR, privacy, data residency or sovereignty, transfers, NIS2, the AI Act, sector compliance, or regulatory exposure in a deal.
---

Run `deal method data-and-compliance` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
