---
name: cyber
description: Analyse the security and compliance of an M&A deal as due diligence sees it, from the deal's folder of documents (identity and access, endpoints, the network perimeter, backups and recovery, the incident history, certifications, regulatory exposure such as GDPR, NIS2 and sector rules, and the SOC and who runs it), write what it finds into the deal as findings, risks, controls and the security systems themselves, and answer with one decision of three options. Use when asked for a cyber or security due diligence, a security posture review, what the incidents or a security assessment mean for the deal, or what must be fixed, priced or made a condition.
---

Run `deal method cyber` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
