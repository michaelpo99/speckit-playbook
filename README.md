# Spec Kit Governance Playbook

這個 repository 保存建立新專案時，搭配 Spec Kit、Codex 與 AI agent 使用的文件治理規則、目錄結構、requirements / contracts / schemas governance、`AGENTS.md` 範本、constitution 範本與常用 prompt。

本 repo 是 playbook / template repo，不是任何特定專案的需求倉庫。

## Data Safety

不要在此 repo 放入：

- 真實客戶資料
- 真實公司或客戶名稱
- 專案敏感 contract
- production payload
- credential、token、password、private key
- 內部未公開 schema 或商務規則

需要範例時，請使用假資料、抽象名稱或去識別化內容。

## How to Use

1. 先讀 [spec-kit-project-governance.md](./spec-kit-project-governance.md) 了解整體設計。
2. 依 [docs/02-new-project-bootstrap.md](./docs/02-new-project-bootstrap.md) 建立新專案的最小文件結構。
3. 從 [templates/](./templates/) 複製 `AGENTS.md`、constitution、docs README 範本與 prompt。
4. 在新專案中依實際需求調整，不要照抄不需要的進階流程。

## Recommended Reading

- [Overview](./docs/01-overview.md)
- [New Project Bootstrap](./docs/02-new-project-bootstrap.md)
- [Document Governance](./docs/03-document-governance.md)
- [Shared Contract Governance](./docs/04-shared-contract-governance.md)
- [Spec Kit Workflow](./docs/05-speckit-workflow.md)
- [Agent Guidance](./docs/06-agent-guidance.md)

## Templates

- [AGENTS.md](./templates/AGENTS.md)
- [constitution.md](./templates/constitution.md)
- [contract-dependencies.md](./templates/contract-dependencies.md)
- [shared-contract-frontmatter.md](./templates/shared-contract-frontmatter.md)
- [docs-requirements-readme.md](./templates/docs-requirements-readme.md)
- [docs-contracts-readme.md](./templates/docs-contracts-readme.md)
- [docs-schemas-readme.md](./templates/docs-schemas-readme.md)
- [docs-discovery-readme.md](./templates/docs-discovery-readme.md)
- [docs-scratch-readme.md](./templates/docs-scratch-readme.md)
- [table-schema.sql](./templates/table-schema.sql)
- [prompts/](./templates/prompts/)
