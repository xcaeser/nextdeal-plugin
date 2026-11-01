---
name: infrastructure
description: Analyse the corporate infrastructure of an M&A deal, what staff and offices run on and not what the product runs on in production, from the deal's folder of documents (hosting, data centres and cloud accounts, the network and its sites, the workplace and end-user devices, identity and the directory, IT operations, the shared services a parent provides and what they cost), write the estate into the deal's records with evidence and what happens to each piece at Day 1, and answer with one decision of three options, a commentary note and a rating. Use when asked to analyse the infrastructure, hosting, network, workplace, devices, identity or IT operations of a deal, the parent's shared services in a carve-out, or what a TSA for them must cover.
---

Run `deal method infrastructure` with Bash and follow what it prints, exactly and in full. It is this skill's current method.

If it answers that there is no licence, ask the user for their licence key, run `deal licence <key>`, and run it again. If it cannot be fetched, say so and stop: never work from memory.

Where the shell cannot find `deal`, as in Codex, it is `bin/deal` two folders above this file: run it by that full path, with no file extension, wherever a method says `deal`.
