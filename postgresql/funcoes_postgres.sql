SELECT numero, nome FROM banco;
SELECT banco_numero, numero, nome FROM agencia;
SELECT numero, nome, email FROM cliente;
SELECT banco_numero, agencia_numero, cliente_numero FROM cliente_transacoes;

SELECT * FROM conta_corrente;

SELECT * FROM information_schema.columns WHERE table_name = 'banco';
SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'banco';

-- AVG
-- COUNT (having)
-- MAX
-- MIN
-- SUM

SELECT valor FROM cliente_transacoes;
SELECT AVG(valor) FROM cliente_transacoes;

SELECT COUNT(numero) FROM cliente
SELECT COUNT(numero), email FROM cliente
WHERE email ILIKE '%gmail.com'
GROUP BY email;