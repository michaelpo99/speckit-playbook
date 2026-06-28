# [Project Name] Constitution

## Core Principles

### I. 規格優先交付

所有實作工作都必須以 `specs/` 下的 active Spec Kit artifacts 為起點。

當 `spec.md`、`plan.md`、`tasks.md` 與 scratch 或 discovery 文件內容不同時，不得直接依 scratch / discovery 實作。

若 active spec 與 reviewed requirements、contracts 或 schemas 發生衝突，工作必須停止並請使用者確認。

### II. Contract Boundary Integrity

凡是涉及資料轉換、交換、匯入、匯出、帳務、結算或對外介面的功能，都必須維持明確 contract boundary。

若既有 upstream 或 downstream contract 已存在，必須優先沿用。不得自行引入新的 intermediate schema、輸出格式或商務語意，除非 active spec 明確批准。

### III. 可驗證的失敗處理

對 ingestion、conversion、billing、settlement 類功能，失敗行為必須明確且可測試。

當必要輸入不可讀、無效、不完整或與 contract 不符時，系統必須 fail closed。不得產出任何可能被下游流程誤認為有效正式資料的結果。

### IV. 中文優先文件原則

專案文件必須以繁體中文作為主要敘述語言，包括 requirements、discovery notes、specs、plans、tasks、checklists 與 agent-facing guidance。

下列內容必須保留原文：

- 欄位名稱
- 檔名
- command name
- API 名稱
- 資料表名稱
- schema 名稱
- 錯誤碼
- 程式識別字
- sample payload
- 外部 contract 原文片段

### V. 可追溯交付流程

需求演進必須能在 `docs/_scratch/`、`docs/discovery/`、`docs/requirements/`、`docs/contracts/`、`docs/schemas/` 與 `specs/` 之間被追溯。

暫存材料可以探索、可以矛盾，但一旦需求開始影響實作，必須先反映到 reviewed requirement 文件或 active Spec Kit artifacts。

### VI. Shared Contract Governance

跨 feature 共用的 canonical sources 必須放在對應 repo-level reviewed 區域：requirements / policies 放 `docs/requirements/`，boundary contracts 放 `docs/contracts/`，table schemas 與 schema comments 放 `docs/schemas/`。

`specs/<feature>/contracts/` 不得成為 shared canonical contract 的唯一來源。它只能保存 feature-local contract、side-effect contract、integration contract 或 dependency index。

預設不得複製 shared canonical contract 到 feature 目錄。若 feature 需要局部摘要，必須標示為 non-canonical view。

若 feature-local view 與 shared canonical contract 或 schema 發生衝突，工作必須停止並請使用者確認。

## Documentation Rules

文件優先順序：

1. `specs/<active-feature>/spec.md`、`plan.md`、`tasks.md`
2. `docs/requirements/`
3. `docs/contracts/`
4. `docs/schemas/`
5. `specs/<feature>/contracts/`
6. `docs/discovery/`
7. `docs/_scratch/`

## Governance

本 constitution 優先於未文件化的本地習慣或個人工作偏好。任何修訂都必須寫入本檔案，並以與其他專案文件相同的方式進行 review。

**Version**: 0.1.0 | **Ratified**: YYYY-MM-DD | **Last Amended**: YYYY-MM-DD
