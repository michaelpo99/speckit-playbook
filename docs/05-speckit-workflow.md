# Spec Kit Workflow

本文件說明 Spec Kit workflow 在此 governance model 下的使用時機。

## Recommended Flow

```text
scratch / discovery
  -> requirements / contracts / schemas
  -> specify
  -> clarify if needed
  -> plan
  -> tasks
  -> analyze for high-risk features
  -> implement
  -> converge if needed
```

## Specify

用於建立 feature spec。

重點：

- 寫 what / why
- 引用 reviewed requirements、shared contracts 與 schemas
- 不要急著指定 class name、package structure 或細部實作

## Clarify

用於高風險模糊點。

建議：

- 只問 blocking questions
- 非阻擋問題寫成 assumptions 或 deferred
- 不要把 clarify 變成無限訪談

## Plan

用於技術方案。

Plan 應明確記錄：

- language / version
- build tool
- testing framework
- DB access 方式
- CLI / batch / REST service / library 型態
- 不使用哪些框架或做法

若使用者未指定技術棧，agent 的選擇應被視為 assumption，並在 research 或 plan 中記錄 rationale。

## Tasks

用於拆 implementation tasks。

建議：

- tests-first
- contract-first
- 每個 task 可獨立驗證
- 不新增 spec / plan 未批准的功能

## Analyze

用於 implementation 前一致性檢查。正式或高風險 feature 建議使用。

檢查重點：

- 每個 FR 是否有對應 task
- 每個 success criteria 是否有對應測試
- shared requirement / contract / schema dependencies 是否被 tasks 覆蓋
- 是否有從 discovery / scratch 直接導入 implementation 的跡象
- plan 中的技術選擇是否有 rationale

## Implement and Converge

`implement` 用於依 tasks 實作。大型 feature 建議分階段執行。

`converge` 用於實作後收斂，檢查 code 是否符合 spec / plan / tasks，避免漏項。
