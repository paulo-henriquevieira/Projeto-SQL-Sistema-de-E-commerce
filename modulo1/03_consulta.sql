-- ============================================================
-- MÓDULO 1 — Exemplos de Consultas
-- Projeto: Sistema de E-commerce
-- ============================================================


-- ── SELECT básico ─────────────────────────────────────────────

-- Todos os clientes
SELECT * FROM clientes;

-- Apenas nome e email
SELECT nome, email FROM clientes;

-- Usando alias com AS
SELECT
    nome      AS cliente,
    email     AS contato,
    cidade    AS localidade
FROM clientes;


-- ── WHERE — filtragem ─────────────────────────────────────────

-- Clientes de SP
SELECT nome, cidade FROM clientes
WHERE estado = 'SP';

-- Clientes de SP ou RJ
SELECT nome, cidade, estado FROM clientes
WHERE estado IN ('SP', 'RJ');

-- Produtos com preço entre R$50 e R$500
SELECT nome, preco FROM produtos
WHERE preco BETWEEN 50 AND 500;

-- Produtos baratos com estoque alto
SELECT nome, preco, estoque FROM produtos
WHERE preco < 100
  AND estoque > 50;

-- Busca por nome com LIKE
SELECT nome, email FROM clientes
WHERE nome LIKE 'A%';   -- começa com A


-- ── ORDER BY e LIMIT ──────────────────────────────────────────

-- Produtos do mais caro ao mais barato
SELECT nome, preco FROM produtos
ORDER BY preco DESC;

-- Top 3 produtos mais caros
SELECT nome, preco FROM produtos
ORDER BY preco DESC
LIMIT 3;

-- Clientes em ordem alfabética
SELECT nome, cidade FROM clientes
ORDER BY nome ASC;


-- ── Colunas calculadas ────────────────────────────────────────

-- Preço com 15% de desconto
SELECT
    nome,
    preco                    AS preco_original,
    ROUND(preco * 0.85, 2)   AS preco_com_desconto
FROM produtos
ORDER BY preco_com_desconto ASC;


-- ── UPDATE e DELETE ───────────────────────────────────────────

-- Atualizar preço de um produto
UPDATE produtos
SET    preco = 1199.90
WHERE  id = 1;

-- Atualizar estoque
UPDATE produtos
SET    estoque = 20
WHERE  id = 2;

-- ATENÇÃO: sempre use WHERE no UPDATE e DELETE!
