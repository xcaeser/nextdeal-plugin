---
name: red-team
description: Attack a technology M&A engagement's conclusions before an MD sees them: reproduce the largest figures from their sources, test each cited document, and try to kill the recommendation, as a short seller and a forensic accountant would. Use after the specialists have finished, before a verdict is given, or when asked to challenge, stress test or audit a deal's findings.
---

Run `deal method red-team` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
