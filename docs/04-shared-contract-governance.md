# Shared Contract Governance

Shared contract 是會被多個 feature、agent、系統或下游流程共同依賴的規則。

本文件治理 `docs/contracts/` 內的 shared canonical contracts。Requirements、contracts、schemas 分屬不同 canonical source：`docs/requirements/` 保存需求與政策，`docs/contracts/` 保存邊界協議，`docs/schemas/` 保存資料結構與欄位語意。

## Canonical Location

Shared canonical contracts 放在：

```text
docs/contracts/
```

Feature-local contracts 放在：

```text
specs/<feature>/contracts/
```

兩者角色不同，不應互相取代。

## What Belongs in `docs/contracts/`

常見類型包括：

- API request / response
- file input / output contract
- data exchange contract
- mapping contract
- downstream registration contract
- file naming rule
- 狀態碼與錯誤碼

完整 table schema、DDL snapshot 與 table / column comments 應放在 `docs/schemas/`。Contract 可以引用 schema，但不要把完整 schema 複製進 contract。

## What Belongs in Feature `contracts/`

`specs/<feature>/contracts/` 適合放：

- 本 feature 暴露的 CLI / API contract
- 本 feature 的 file output 行為
- 本 feature 的 DB registration side effect
- `contract-dependencies.md`

預設只需要 `contract-dependencies.md`。Feature-local view 是例外，不是預設。

## Avoiding Drift

避免 drift 的規則：

1. 不要把 shared canonical contract 複製到 feature 目錄當第二份權威來源。
2. Feature spec 應引用 canonical contract，而不是重寫完整內容。
3. `contract-dependencies.md` 只列 dependency，不複製 contract。
4. 若 feature-local view 必須存在，需標示為 non-canonical。
5. 若 feature-local view 與 `docs/contracts/` 衝突，必須停下確認。
6. Shared contract 修改後，應 review 引用它的 active specs、tasks 與 tests。

## Contract Status

第一版建議只使用少量狀態：

- `Draft`：仍在整理，不可直接實作，除非使用者明確指定。
- `Active`：可作為正式依據。
- `Deprecated`：不再建議使用，保留追溯與 replacement。

不要一開始建立複雜狀態機。
