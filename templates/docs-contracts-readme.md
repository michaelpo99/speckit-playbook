# Contracts

本目錄保存跨 feature 共用的 formal boundary agreements。

## Rules

1. Shared API / file / data contracts 放在本目錄。
2. `specs/<feature>/contracts/` 不應複製本目錄文件作為新的 canonical source。
3. 若 feature 需要局部摘要，應標示為 non-canonical view。
4. Contract 可以引用 `docs/requirements/` 與 `docs/schemas/`，但不應複製完整 requirement 或 schema。
5. 若本目錄文件變更，所有引用該文件的 feature specs / plans / tasks / tests 應重新 review。
6. 若 contract 與 requirement、schema 或 active feature artifact 衝突，必須停止並請使用者確認。

## Directory Organization

本目錄可依實際需要使用子目錄分類，例如依 integration、data flow、producer / consumer 或 contract type 分組。

第一版不預先限制固定分類；但本 README 必須維護索引，讓讀者知道 shared contracts 在哪裡。子目錄與檔名應保持穩定、可追溯。

## Contract Types

- API request / response contract
- file input / output contract
- data exchange contract
- mapping contract
- downstream registration contract
- producer / consumer agreement

## Registry

| Contract | Type | Role | Status | Referenced By |
|---|---|---|---|---|
| `example_contract.md` | API / File / Data / Mapping | 說明用途 | Draft / Active | `specs/001-example` |

## Change Policy

- Minor clarification：可直接修訂，但需更新 review 記錄。
- Breaking contract change：必須更新版本，並 review 所有 referenced features。
- Deprecated contract：必須標示 replacement。
