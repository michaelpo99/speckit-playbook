# Agent Guidance

## Document Priority

Use this source priority when reading project documents:

1. `specs/<active-feature>/spec.md`, `plan.md`, `tasks.md`
2. `docs/requirements/` reviewed requirements / policies / domain rules
3. `docs/contracts/` shared API / file / data contracts
4. `docs/schemas/` table schemas / schema documentation
5. `specs/<feature>/contracts/` feature-local contracts or dependency index
6. `docs/discovery/` exploratory notes
7. `docs/_scratch/` temporary notes

If documents conflict, stop and ask the user. Do not silently choose one.

## Implementation Rule

Before implementation, confirm that the relevant requirement has been reflected in:

- active `spec.md`
- active `plan.md`
- active `tasks.md`

Do not implement directly from `docs/discovery/` or `docs/_scratch/` unless the user explicitly says to do so.

## Shared Contract Rules

Reviewed requirements live under `docs/requirements/`.

Shared canonical contracts live under `docs/contracts/`.

Table schemas, DDL snapshots, schema comments, DBML, ERD source, and generated schema docs live under `docs/schemas/`.

Feature-local files under `specs/<feature>/contracts/` are not canonical unless explicitly stated.

When implementing a feature, read `contracts/contract-dependencies.md` if present, then read referenced files under `docs/requirements/`, `docs/contracts/`, and `docs/schemas/`.

Do not copy canonical shared requirements, contracts, or schemas into feature folders as normative documents.

If a feature-local view conflicts with canonical sources, stop and ask.

## Language and Data Rules

Use Traditional Chinese as the primary narrative language.

Preserve field names, file names, command names, API names, table names, schema names, code identifiers, and sample payloads in their original language.

Do not add real customer data, sensitive project contracts, credentials, tokens, or production payloads.
