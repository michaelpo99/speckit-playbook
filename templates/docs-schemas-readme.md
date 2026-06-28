# Schemas

本目錄保存 table schemas、DDL snapshots、schema comments、DBML、ERD source 或 generated schema docs。

## Rules

1. 本目錄保存資料結構與欄位語意，不保存 production data。
2. 若 repo 有 executable migrations、ORM schema 或 production DDL，必須在本 README 說明本目錄內容是 canonical source、reviewed snapshot 還是 reference copy。
3. Table / column comments 應盡量保留，因為它們是 schema 語意的重要來源。
4. Contract 可以引用本目錄 schema，但不應複製完整 schema。
5. 若 schema 與 requirement、contract 或 active feature artifact 衝突，必須停止並請使用者確認。

## Directory Organization

本目錄可依實際需要使用子目錄分類，例如依 database、schema、domain 或 source system 分組。

第一版不預先限制固定分類；但本 README 必須維護索引，讓讀者知道 table schemas 與 schema docs 在哪裡。子目錄與檔名應保持穩定、可追溯。

## Source of Truth

- Canonical Source: [填寫 migrations / ORM schema / SQL file / external source]
- Snapshot Date: YYYY-MM-DD
- Review Status: Draft / Active / Deprecated

## Registry

| Schema Document | Type | Role | Status | Referenced By |
|---|---|---|---|---|
| `example_schema.sql` | SQL / DDL / DBML / Generated Docs | 說明用途 | Draft / Active | `specs/001-example` |

## Data Safety

不要在 schema 範例中保存 production data、credential、token、password、private key 或真實客戶資料。
