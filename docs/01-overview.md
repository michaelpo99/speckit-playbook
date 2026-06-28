# Overview

本 playbook 提供一套輕量的 repo-level governance，讓新專案在使用 Spec Kit、Codex 與 AI agent 時，有一致的文件分層與 agent 操作規則。

## What This Playbook Covers

- 新專案 bootstrap 步驟
- `specs/`、`docs/requirements/`、`docs/contracts/`、`docs/schemas/`、`docs/discovery/`、`docs/_scratch/` 的分工
- shared canonical contract 的放置與引用規則
- `AGENTS.md` 與 constitution 範本
- 常用 Spec Kit prompt

## What This Playbook Does Not Cover

- Spec Kit 官方指令完整教學
- 特定技術棧標準
- 真實專案需求或商務 contract
- CI / lint / approval workflow
- 大型 ADR 流程

## File Roles

| File | Purpose |
|---|---|
| `../spec-kit-project-governance.md` | 總綱與設計原則 |
| `02-new-project-bootstrap.md` | 新專案導入步驟 |
| `03-document-governance.md` | 文件分層與優先序 |
| `04-shared-contract-governance.md` | shared contract 管理 |
| `05-speckit-workflow.md` | Spec Kit workflow 使用時機 |
| `06-agent-guidance.md` | agent 操作規則說明版 |

## Recommended Use

新專案不需要一次套用所有內容。先落地最小結構，等文件與 feature 數量增加後，再加入進階治理。
