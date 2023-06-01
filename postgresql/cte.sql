SELECT numero, nome FROM banco;
SELECT banco_numero, numero, nome FROM agencia;

WITH tbl_tm_banco AS (
    SELECT numero, nome
    FROM banco
)
SELECT numero, nome FROM tbl_tm_banco;

WITH params