-- Pedidos com nome do cliente
SELECT
    p.id      AS pedido,    -- id da tabela pedidos (apelido p)
    c.nome    AS cliente,   -- nome da tabela clientes (apelido c)
    p.status,               -- status da tabela pedidos
    p.total                 -- total da tabela pedidos
FROM pedidos p              -- tabela principal, apelido p
INNER JOIN clientes c       -- conecta com clientes, apelido c
    ON p.cliente_id = c.id; -- ponte: cliente_id do pedido = id do cliente
 
 
-- Itens com nome do produto
SELECT
    pr.nome      AS produto,   -- nome da tabela produtos (apelido pr)
    i.quantidade,              -- quantidade da tabela itens_pedido (apelido i)
    i.preco_unit               -- preco da tabela itens_pedido
FROM itens_pedido i            -- tabela principal, apelido i
INNER JOIN produtos pr         -- conecta com produtos, apelido pr
    ON i.produto_id = pr.id;   -- ponte: produto_id do item = id do produto
 
 
-- Pedidos aprovados com nome do cliente
SELECT
    p.id      AS pedido,
    c.nome    AS cliente,
    p.total
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.id
WHERE p.status = 'aprovado';
 
 
-- JOIN com 4 tabelas: pedido + cliente + produto + quantidade
SELECT
    p.id          AS pedido,
    c.nome        AS cliente,
    pr.nome       AS produto,
    i.quantidade,
    i.preco_unit
FROM itens_pedido i
INNER JOIN pedidos  p  ON i.pedido_id  = p.id    -- ponte: item -> pedido
INNER JOIN clientes c  ON p.cliente_id = c.id    -- ponte: pedido -> cliente
INNER JOIN produtos pr ON i.produto_id = pr.id;  -- ponte: item -> produto
 
 
-- ── LEFT JOIN ─────────────────────────────────────────────────
 
-- Todos os clientes com ou sem pedido
SELECT
    c.nome    AS cliente,   -- tabela da esquerda: todos aparecem sempre
    p.id      AS pedido_id,
    p.status
FROM clientes c             -- tabela da esquerda (todos aparecem)
LEFT JOIN pedidos p         -- tabela da direita (NULL se nao tiver par)
    ON c.id = p.cliente_id; -- ponte: id do cliente = cliente_id do pedido
 
 
-- Clientes que NUNCA fizeram pedido (LEFT JOIN + IS NULL)
SELECT c.nome AS cliente    -- pega o nome da tabela clientes
FROM clientes c             -- tabela da esquerda: todos os clientes aparecem
LEFT JOIN pedidos p         -- une com pedidos, apelido p
    ON c.id = p.cliente_id  -- ponte: id do cliente = cliente_id do pedido
