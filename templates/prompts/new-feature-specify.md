# Prompt: New Feature Specify

```text
$speckit-specify

建立 feature：<feature name>

請遵守 repo 文件治理規則：

1. `docs/requirements/` 保存 reviewed requirements / policies / domain rules。
2. `docs/contracts/` 保存 shared API / file / data contracts。
3. `docs/schemas/` 保存 table schemas / schema documentation。
4. `docs/discovery/` 只能作背景分析，不可直接作為 implementation source。
5. `docs/_scratch/` 是暫存資料，不可直接作為 implementation source。
6. 若本 feature 依賴 shared canonical source，請在 feature 的 `contracts/contract-dependencies.md` 中列出。
7. 不要複製 shared canonical source 作為 feature-local canonical source。
8. 若文件衝突，請停止並列出衝突，不要自行選擇。
9. 請先產生 spec，不要進入 plan 或 implementation。
10. 請使用繁體中文為主；欄位名稱、檔名、command name、程式識別字保留原文。

需求概要：
<貼需求>
```
