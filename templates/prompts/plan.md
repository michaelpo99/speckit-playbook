# Prompt: Plan

```text
$speckit-plan

請根據 active spec 產生 implementation plan。

技術限制：
1. 使用 <language / version>。
2. 使用 <build tool>。
3. 測試使用 <test framework>。
4. DB access 使用 <JDBC / psycopg / etc>。
5. 不使用 <不想使用的框架>。
6. 實作型態是 <CLI / batch / REST service / library>。
7. 請維持 contract boundary，不新增未批准的 internal schema。
8. 若需要參考 shared requirement、contract 或 schema，請引用 `docs/requirements/`、`docs/contracts/` 或 `docs/schemas/`。
9. 若有技術選擇假設，請寫入 research.md 的 Decision / Rationale / Alternatives considered。

請不要寫 code。
```
