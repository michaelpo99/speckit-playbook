# New Project Bootstrap

本文件說明新專案導入 Spec Kit governance 的先期步驟。

## Minimal Directory Structure

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

## Minimal Bootstrap Flow

1. 初始化 Spec Kit。
2. 建立 `AGENTS.md`。
3. 建立 `.specify/memory/constitution.md`。
4. 建立 `docs/requirements/README.md`。
5. 建立 `docs/contracts/README.md`。
6. 建立 `docs/schemas/README.md`。
7. 建立 `docs/discovery/README.md`。
8. 建立 `docs/_scratch/README.md`。
9. 開始第一個 feature 的 `specify` / `plan` / `tasks`。

最小版只解決三件事：

- 文件優先順序
- requirements / contracts / schemas 放置規則
- agent 不得從 discovery / scratch 直接實作

## Full Bootstrap Flow

正式或較長期專案可再加入：

1. 在 `README.md` 說明 repo 目的與 active feature。
2. 建立 `docs/requirements/`、`docs/contracts/`、`docs/schemas/` 索引。
3. 為有 shared requirement / contract / schema dependency 的 feature 建立 `contract-dependencies.md`。
4. 建立 technical constraints 文件，記錄長期技術棧偏好。
5. 在高風險 feature 的 implementation 前執行 analyze。
6. 實作後視需要執行 converge。

## What to Copy From This Playbook

- `templates/AGENTS.md` -> `AGENTS.md`
- `templates/constitution.md` -> `.specify/memory/constitution.md`
- `templates/docs-requirements-readme.md` -> `docs/requirements/README.md`
- `templates/docs-contracts-readme.md` -> `docs/contracts/README.md`
- `templates/docs-schemas-readme.md` -> `docs/schemas/README.md`
- `templates/docs-discovery-readme.md` -> `docs/discovery/README.md`
- `templates/docs-scratch-readme.md` -> `docs/_scratch/README.md`
- `templates/prompts/*` -> 依需要保存到個人 prompt 或 repo template

## Start Small

不要一開始建立 ADR、CI、approval workflow 或複雜文件狀態機。等專案真的出現 drift、衝突或跨 feature canonical source 管理壓力時，再加入進階治理。
