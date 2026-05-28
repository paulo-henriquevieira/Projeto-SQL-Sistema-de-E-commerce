-- ============================================================
-- MÓDULO 1 — Criação das Tabelas
-- Projeto: Sistema de E-commerce
-- Banco: PostgreSQL 18
-- ============================================================

-- Tabela de clientes
CREATE TABLE clientes (
    id        SERIAL        PRIMARY KEY,
    nome      VARCHAR(100)  NOT NULL,
    email     VARCHAR(150)  NOT NULL UNIQUE,
    telefone  VARCHAR(20),
    cidade    VARCHAR(80),
    estado    CHAR(2),
    criado_em TIMESTAMP     DEFAULT NOW()
);

-- Tabela de categorias
CREATE TABLE categorias (
    id        SERIAL      PRIMARY KEY,
    nome      VARCHAR(80) NOT NULL UNIQUE,
    descricao TEXT
);

-- Tabela de produtos
CREATE TABLE produtos (
    id           SERIAL         PRIMARY KEY,
    nome         VARCHAR(150)   NOT NULL,
    descricao    TEXT,
    preco        NUMERIC(10,2)  NOT NULL,
    estoque      INTEGER        DEFAULT 0,
    categoria_id INTEGER        REFERENCES categorias(id),
    criado_em    TIMESTAMP      DEFAULT NOW()
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id         SERIAL         PRIMARY KEY,
    cliente_id INTEGER        REFERENCES clientes(id),
    status     VARCHAR(20)    DEFAULT 'pendente',
    total      NUMERIC(10,2),
    criado_em  TIMESTAMP      DEFAULT NOW()
);
