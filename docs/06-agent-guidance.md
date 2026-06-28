# Agent Guidance

本文件是 agent 行為規則的說明版。可複製到專案根目錄的短版請使用 `templates/AGENTS.md`。

## Read Order

Agent 開始工作前應先讀：

1. `AGENTS.md`
2. `README.md`
3. active `specs/<feature>/spec.md`
4. active `plan.md` 與 `tasks.md`
5. referenced files under `docs/requirements/`、`docs/contracts/`、`docs/schemas/`
6. `contract-dependencies.md` if present

## Implementation Rule

不得直接從 `docs/discovery/` 或 `docs/_scratch/` 實作，除非使用者明確要求。

實作前應確認：

- 需求已在 active `spec.md`
- 任務已在 active `tasks.md`
- shared requirement / contract / schema 已在對應 canonical source 或被 active spec 明確引用

## Conflict Rule

如果文件衝突：

1. 標出衝突來源
2. 說明差異
3. 停下來請使用者確認
4. 不要自行選擇較方便的一份

## Language Rule

文件主敘述使用繁體中文。

欄位名稱、檔名、command name、API 名稱、資料表名稱、schema 名稱、程式識別字與 sample payload 保留原文。

## Data Rule

不要產生或保存真實客戶資料、真實公司名稱、專案敏感 contract、credential、token 或 production payload。
