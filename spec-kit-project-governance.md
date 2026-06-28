# Spec Kit Project Governance Guide

本文件是此 playbook 的總綱。它說明新專案導入 Spec Kit、Codex 與 AI agent 時，應先建立哪些 repo-level 文件治理規則，以及各份細節文件放在哪裡。

詳細操作請看 `docs/`；可複製內容請看 `templates/`。

## Core Idea

Spec Kit 適合管理單一 feature 的 `spec.md`、`plan.md`、`tasks.md` 與 implementation flow。跨 feature 共用的 reviewed requirements、policies、domain rules、canonical contracts、table schemas、資料格式、DB schema、mapping rules、文件優先順序與 agent 操作規則，則應由 repo-level governance 管理。

本 playbook 的核心原則：

> 允許 discovery 混亂，但實作只能依據 reviewed requirements、canonical contracts、schemas 與 active specs；agent 必須知道文件優先順序。

## Document Map

| File | Role |
|---|---|
| `README.md` | repo 入口、使用方式、敏感資料規則 |
| `docs/01-overview.md` | playbook 文件導覽 |
| `docs/02-new-project-bootstrap.md` | 新專案導入 Spec Kit 的步驟 |
| `docs/03-document-governance.md` | 文件分層、優先順序與 conflict rule |
| `docs/04-shared-contract-governance.md` | shared canonical contract 管理規則 |
| `docs/05-speckit-workflow.md` | Spec Kit workflow 使用時機 |
| `docs/06-agent-guidance.md` | agent 行為規則說明版 |
| `templates/` | 可複製到新 repo 的範本 |

## Minimal Project Structure

新專案第一版建議只建立：

```text
.
├── AGENTS.md
├── README.md
├── .specify/
│   └── memory/
│       └── constitution.md
├── docs/
│   ├── requirements/
│   │   └── README.md
│   ├── contracts/
│   │   └── README.md
│   ├── schemas/
│   │   └── README.md
│   ├── discovery/
│   │   └── README.md
│   └── _scratch/
│       └── README.md
└── specs/
```

等專案變大，再考慮 ADR、contract registry、technical constraints 或更完整的 template set。

## Source Priority

當文件內容衝突時，依下列順序判讀：

1. `specs/<active-feature>/spec.md`、`plan.md`、`tasks.md`
2. `docs/requirements/` reviewed requirements / policies / domain rules
3. `docs/contracts/` shared API / file / data contracts
4. `docs/schemas/` table schemas / schema documentation
5. `specs/<feature>/contracts/` feature-local contracts or dependency index
6. `docs/discovery/` exploratory notes
7. `docs/_scratch/` temporary notes

若文件彼此衝突，agent 應停下來確認，不要靜默挑一份作為依據。

## Canonical Source Summary

- `docs/requirements/` 保存 reviewed requirements、policies 與 domain rules。
- `docs/contracts/` 保存 shared API、file、data exchange、mapping 與 integration contracts。
- `docs/schemas/` 保存 table schema SQL、DDL snapshot、schema comments、DBML、ERD source 或 generated schema docs。
- `docs/requirements/`、`docs/contracts/`、`docs/schemas/`、`docs/discovery/`、`docs/_scratch/` 可依實際需要使用子目錄分類，但應維護 README 索引或導覽；第一版不預設固定分類。
- `specs/<feature>/contracts/` 不放 shared canonical contract 的副本。
- 有 shared contract dependency 時，用 `contract-dependencies.md` 連結。
- Feature-local view 是例外，只在 contract 太大、易誤讀或有 feature-specific interpretation 時建立。
- Discovery 中的 requirement、contract、schema 或暫定規則若要影響實作，必須先提升到對應 canonical source 或 active `specs/`。

## Minimal vs Optional

第一版必備：

- `AGENTS.md`
- `.specify/memory/constitution.md`
- `docs/requirements/README.md`
- `docs/contracts/README.md`
- `docs/schemas/README.md`
- `docs/discovery/README.md`
- `docs/_scratch/README.md`
- 常用 prompt：`new-feature-specify`、`plan`、`tasks`、`analyze`

可選進階：

- `docs/decisions/` 與 ADR
- shared contract YAML frontmatter
- detailed contract registry
- technical stack policy
- `converge` prompt
- CI / lint for documentation rules

## Language and Data Rules

文件以繁體中文為主要敘述語言。

下列內容保留原文：

- 欄位名稱
- 檔名
- command name
- API 名稱
- 資料表名稱
- schema 名稱
- 程式識別字
- sample payload

此 repo 不保存真實客戶資料、真實商務 contract、內部敏感 schema、credential、token 或 production payload。需要示例時，使用假資料或抽象名稱。
