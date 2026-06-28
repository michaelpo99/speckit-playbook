# Requirements and Canonical Sources

本目錄保存 reviewed、可跨 feature 共用的正式 requirements、policies 與 domain rules。

## Rules

1. 本目錄下文件可被多個 feature 引用。
2. Contracts 應放在 `docs/contracts/`；schemas 應放在 `docs/schemas/`。
3. 若 feature 需要局部摘要，應標示為 non-canonical view。
4. 若本目錄文件變更，所有引用該文件的 feature specs / plans / tasks / tests 應重新 review。
5. `docs/discovery/` 與 `docs/_scratch/` 不得直接取代本目錄文件。
6. 若 reviewed requirement 與 active feature artifact 衝突，必須停止並請使用者確認。

## Directory Organization

本目錄可依實際需要使用子目錄分類，例如依 domain、integration 或 contract type 分組。

第一版不預先限制固定分類，避免治理結構過早僵化；但本 README 必須維護索引，讓讀者知道正式 requirement、policy 與 domain rule 在哪裡。子目錄與檔名應保持穩定、可追溯。

## Document Types

### Reviewed Requirements

- business requirement
- product requirement
- external integration requirement

### Policies / Domain Rules

- operation policy
- billing / rating / settlement rule
- customer mapping rule

## Registry

| Document | Type | Role | Status | Referenced By |
|---|---|---|---|---|
| `example_requirement.md` | Requirement / Policy / Domain Rule | 說明用途 | Draft / Active | `specs/001-example` |

## Change Policy

- Minor clarification：可直接修訂，但需更新 review 記錄。
- Breaking contract change：必須更新版本，並 review 所有 referenced features。
- Deprecated contract：必須標示 replacement。
