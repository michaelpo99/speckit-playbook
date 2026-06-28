# Document Governance

本文件定義專案文件分層、優先順序與 conflict rule。

## Source Priority

當文件內容衝突時，依下列順序判讀：

1. `specs/<active-feature>/spec.md`、`plan.md`、`tasks.md`
2. `docs/requirements/` reviewed repo-level requirements / policies / domain rules
3. `docs/contracts/` shared API / file / data contracts
4. `docs/schemas/` table schemas / schema documentation
5. `specs/<feature>/contracts/` feature-local contracts or dependency index
6. `docs/discovery/` exploratory notes
7. `docs/_scratch/` temporary notes

若文件彼此衝突，agent 或開發者應停下來確認，不要靜默挑一份作為依據。

## `specs/`

`specs/` 保存 Spec Kit feature artifacts。

常見內容：

- `spec.md`
- `plan.md`
- `tasks.md`
- `research.md`
- `data-model.md`
- `contracts/`
- `checklists/`

`spec.md` 也是 requirement 文件，但它是 feature-level requirement package。它描述單一 feature 的 user stories、functional requirements、acceptance criteria 與 success criteria。

實作前，相關要求應已反映到 active `spec.md` 與 `tasks.md`。

## `docs/requirements/`

`docs/requirements/` 保存 reviewed、可被一個或多個 feature 引用的 repo-level requirements、policies 與 domain rules。

適合放：

- business requirement
- product / domain rule
- operation policy
- billing / rating / settlement rule
- customer mapping rule
- external integration requirement

多個 feature 可以引用這裡的文件。

`docs/requirements/` 可以依實際需要使用子目錄分類，例如依 domain、product area 或 policy type 分組。第一版不預先限制固定分類，避免治理結構過早僵化；但 `docs/requirements/README.md` 必須維護索引，讓讀者知道正式 requirement、policy 與 domain rule 在哪裡。子目錄與檔名應保持穩定、可追溯。

## `docs/contracts/`

`docs/contracts/` 保存跨 feature 共用的 formal boundary agreements。

適合放：

- API request / response contract
- file input / output contract
- data exchange contract
- mapping contract
- downstream registration contract
- producer / consumer agreement

Contract 說明系統邊界如何互動。它可以引用 requirement 與 schema，但不應取代兩者。

`docs/contracts/README.md` 必須維護索引，讓讀者知道 shared contracts 在哪裡。子目錄可依 integration、data flow 或 contract type 分類，但第一版不預設固定分類。

## `docs/schemas/`

`docs/schemas/` 保存 table schemas、DDL snapshot、schema comments、DBML、ERD source 或 generated schema docs。

適合放：

- full table schema SQL
- table / column semantic comments
- reviewed DDL snapshot
- DBML / ERD source
- generated schema documentation index

Schema 回答資料結構長什麼樣、欄位語意是什麼。若 repo 另有 executable migrations、ORM schema 或 production DDL，應在 `docs/schemas/README.md` 說明 schema 文件是 canonical source、reviewed snapshot 還是 reference copy。

`docs/schemas/` 可以依實際需要使用子目錄分類，例如依 database、schema、domain 或 source system 分組。第一版不預先限制固定分類；但 `docs/schemas/README.md` 必須維護索引。子目錄與檔名應保持穩定、可追溯。

## `docs/discovery/`

`docs/discovery/` 保存探索分析、外部回覆、sample analysis、方案比較與暫定規則。

規則：

- 可作為 analysis、clarification、planning 的輸入
- 不直接作為 implementation source of truth
- 若結論要影響實作，必須提升到 `docs/requirements/`、`docs/contracts/`、`docs/schemas/` 或 active `specs/`

`docs/discovery/` 可以依實際需要使用子目錄分類，例如依 topic、source、integration 或 analysis thread 分組。第一版不預先限制固定分類；但 `docs/discovery/README.md` 應維護導覽或索引，讓讀者知道重要分析、open questions 與 promotion candidates 在哪裡。子目錄與檔名應保持穩定、可追溯。

## `docs/_scratch/`

`docs/_scratch/` 保存臨時草稿、剪貼資料、未整理筆記。

規則：

- 可以不完整
- 可以矛盾
- 可以過期
- 不可直接作為 implementation source

`docs/_scratch/` 可以依實際需要使用子目錄分類，例如依日期、topic、meeting 或 source material 分組。第一版不預先限制固定分類；但 `docs/_scratch/README.md` 應維護基本導覽或使用規則，避免暫存資料被誤認為正式來源。Scratch 可以較鬆散，但檔名仍應足以追溯來源或用途。

## Promotion Rule

Discovery 或 scratch 內容符合以下任一條件時，應提升到正式層：

- 影響 requirement、contract、schema、API、file format、DB 寫入或 mapping
- 影響成功 / 失敗判定
- 影響測試案例
- 會被多個 feature 使用

提升後，應同步更新 active spec、plan 或 tasks。
