# Discovery Notes

本目錄保存探索分析、方案比較、外部回覆整理、sample analysis 與尚未正式採納的假設。

## Rules

1. 本目錄不是 implementation source of truth。
2. 若 discovery 結論要影響實作，必須先提升到 `docs/requirements/`、`docs/contracts/`、`docs/schemas/` 或 active `specs/`。
3. discovery 文件可以包含不確定、待確認、替代方案與風險。
4. 不得在未確認的情況下用 discovery 覆寫 active spec。
5. 若 discovery 與 reviewed requirement 衝突，應停止並請使用者確認。

## Directory Organization

本目錄可依實際需要使用子目錄分類，例如依 topic、source、integration 或 analysis thread 分組。

第一版不預先限制固定分類；但本 README 應維護導覽或索引，讓讀者知道重要分析、open questions 與 promotion candidates 在哪裡。子目錄與檔名應保持穩定、可追溯。

## Suggested Sections

- Background
- Source Materials
- Findings
- Assumptions
- Open Questions
- Promotion Candidates
