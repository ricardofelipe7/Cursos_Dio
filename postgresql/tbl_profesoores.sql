CREATE ROLE professores NOCREATEDB NOCREATEROLE INHERIT NOLOGIN NOBYPASSRLS CONNECTION LIMIT 10;
ALTER ROLE professores PASSWORD '123';
-- CREATE ROLE ricardo LOGIN PASSWORD '123';

DROP ROLE ricardo;

-- CREATE ROLE ricardo LOGIN PASSWORD '123' IN ROLE professores;

CREATE ROLE ricardo LOGIN PASSWORD '123' ROLE professores;

CREATE TABLE teste (nome varchar);
GRANT ALL ON TABLE teste TO professores;

CREATE ROLE ricardo LOGIN PASSWORD '123';
CREATE ROLE ricardo INHERIT LOGIN PASSWORD '123' IN ROLE professores;

REVOKE professores FROM ricardo;