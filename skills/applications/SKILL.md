---
name: applications
description: Analyse the corporate application estate of an M&A deal, the systems the company runs itself on and not the product it sells, from the deal's folder of documents (the application inventory, owners, vendors, hosting, users, run cost, criticality, interfaces, licence transfer, end of life, and where each application ends up: keep, transfer, clone, replace or retire), write the inventory and its target states into the deal's records with their evidence, and answer with one decision of three options, a commentary note and a rating. Use when asked to analyse, inventory or rationalise the applications or the application landscape of a deal, to set their target states or Day 1 treatment, or to work out what the buyer takes on in licences and systems.
---

Run `deal method applications` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
