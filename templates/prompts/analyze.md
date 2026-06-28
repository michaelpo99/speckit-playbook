# Prompt: Analyze

```text
$speckit-analyze

請檢查 active spec、plan、research、data-model、contracts、tasks 是否一致。

重點：
1. 每個 FR 是否有對應 task。
2. 每個 success criteria 是否有對應測試。
3. 是否有 task 超出 scope。
4. 是否有從 discovery / scratch 直接導入 implementation 的跡象。
5. shared requirement / contract / schema dependencies 是否已被 tasks 覆蓋。
6. feature-local contracts 是否與 canonical sources 衝突。
7. plan 中的技術選擇是否有 research rationale。

不要寫 code。
```
