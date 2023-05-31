CREATE DATABASE financas;

CREATE TABLE IF NOT EXISTS banco (
  numero INTEGER NOT NULL,
  nome VARCHAR(50) NOT NULL,
  ativo BOOLEAN NOT NULL DEFAULT TRUE,
  data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (numero)
);

CREATE TABLE IF NOT EXISTS agencia (
    banco_numero INTEGER NOT NULL,
    numero INTEGER NOT NULL,
    nome VARCHAR(80) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (banco_numero, numero),
    FOREIGN KEY (banco_numero) REFERENCES banco (numero)
);

CREATE TABLE cliente (
    numero BIGSERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    email VARCHAR(250) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE conta_corrente (
    banco_numero INTEGER NOT NULL,
    agencia_numero INTEGER NOT NULL,
    numero BIGINT NOT NULL,
    digito SMALLINT NOT NULL,
    cliente_numero BIGINT NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (banco_numero, agencia_numero, numero, digito, cliente_numero),
    FOREIGN KEY (banco_numero, agencia_numero) REFERENCES agencia (banco_numero, numero),
    FOREIGN KEY (cliente_numero) REFERENCES cliente (numero)
);