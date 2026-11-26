# Rights and future demonstration roadmap

## Goal

Seek written permission to create a limited, non-commercial, educational demonstration of *Harry Potter: Magic Awakened* after the official service is unavailable or when the rights holders consider such an exhibit appropriate.

This document is a proposal, not a claim of permission.

## Rights likely involved

A credible demonstration may require authorization covering several independent layers:

- game client and source or object code;
- server behavior and network protocols;
- art, animation, user interface, text, music and voice performances;
- Harry Potter, Wizarding World and related trademarks and fictional material;
- player accounts, chat, names, guilds and other personal data;
- third-party middleware, SDKs and licensed technology;
- geographic and platform distribution rights.

A license from one participant may not cover the others. We should ask the relevant parties to identify the correct rights chain rather than pretending a logo at the bottom of a page answers it.

## Proposed demo scope

Start smaller than “restore the MMO.” A rights-friendly first exhibit could be:

1. a locally hosted, non-commercial museum build;
2. one approved client version;
3. a small, explicitly licensed asset set;
4. character creation or a provided demonstration character;
5. a bounded Hogwarts exploration area;
6. one tutorial class and one representative duel against scripted opponents;
7. no purchases, public chat, competitive ranking, or live account migration;
8. no implication that the exhibit is the official continuing service;
9. access limited by the rights agreement, potentially on-site or time-limited;
10. telemetry limited to operational diagnostics, with no advertising profile.

## What we can offer rights holders

- Exact provenance and cryptographic receipts for every preserved input.
- A clean separation between original materials, project-authored code and player contributions.
- A takedown and correction contact.
- Content allowlists instead of bulk asset publication.
- Private technical evaluation before any public release.
- Geographic, time, audience and concurrency limits.
- Attribution and notices in the form they require.
- No monetization unless separately negotiated.
- A preservation copy deposited with an agreed library, archive or museum where appropriate.

## Contact sequence

1. NetEase Games / the operating entity for the surviving client and backend.
2. Warner Bros. Games and Portkey Games for publishing and game-specific rights.
3. Warner Bros. Discovery / Wizarding World licensing representatives for franchise material.
4. Relevant platform storefronts only where package redistribution or historical listings require them.
5. A recognized game archive, museum, university or library as an institutional preservation partner.
6. Counsel familiar with software preservation, copyright, trademarks, privacy and contract law.

Keep every request concise. Include the proposed bounded scope, non-commercial intent, security/privacy controls, desired term, audience, territory and exactly which materials are requested.

## Evidence before outreach

Prepare privately:

- client hashes and package identity;
- official release chronology;
- representative player-state captures with consent;
- a feature-level demonstration design that uses placeholders;
- a threat model and privacy plan;
- hosting cost and operational plan;
- takedown/correction procedure;
- list of assets and behaviors requested from each rights holder.

Do not send private player data, credentials, extracted bulk assets or circumvention details in an introductory request.

## Clean-room fallback

If rights holders permit interoperability but cannot release server code, a clean-room process may be possible:

- one team documents permitted observable behavior without copying implementation;
- another team implements from that specification;
- all contributors record provenance;
- commercial game assets remain excluded unless separately licensed;
- authentication, anti-cheat and payment systems are not bypassed or reproduced without explicit authorization.

Whether this is lawful depends on jurisdiction, contracts and the granted permission. Obtain counsel before beginning.

## Current public boundary

This repository intentionally publishes documentation, hashes, inventories, and preservation tooling—not the game client, extracted assets, credentials, proprietary server code, or a playable clone.
