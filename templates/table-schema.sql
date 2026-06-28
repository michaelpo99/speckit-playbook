-- Purpose:
--   Describe the table structure and semantic comments for <table_name>.
--
-- Source of truth:
--   Canonical / Reviewed snapshot / Reference copy: <choose one>
--   Source: <migration / ORM schema / external DDL / manual review>
--   Snapshot date: YYYY-MM-DD
--
-- Data safety:
--   Do not include production data, credentials, tokens, passwords, or private keys.

CREATE TABLE <schema_name>.<table_name> (
    id BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT pk_<table_name> PRIMARY KEY (id)
);

COMMENT ON TABLE <schema_name>.<table_name> IS '<table semantic description>';
COMMENT ON COLUMN <schema_name>.<table_name>.id IS '<primary identifier semantic description>';
COMMENT ON COLUMN <schema_name>.<table_name>.created_at IS '<creation timestamp semantic description>';
COMMENT ON COLUMN <schema_name>.<table_name>.updated_at IS '<last update timestamp semantic description>';
