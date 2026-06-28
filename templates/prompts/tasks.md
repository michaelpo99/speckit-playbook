# Prompt: Tasks

```text
$speckit-tasks

請根據 active spec.md、plan.md、research.md、data-model.md 與 contracts 產生 tasks.md。

限制：
1. 不要修改 spec.md 或 plan.md。
2. 不要開始實作。
3. 採 tests-first / contract-first 順序。
4. 每個 task 要能獨立驗證、逐步 commit。
5. 若本 feature 依賴 shared requirements、contracts 或 schemas，tasks 必須包含對應 verification。
6. 若 task 涉及 DB / file / side effect，請排在 core domain logic 穩定之後。
7. 請使用繁體中文為主；欄位名稱、檔名、command name、程式識別字保留原文。
```
