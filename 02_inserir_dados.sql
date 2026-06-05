-- Inserindo pedidos
INSERT INTO pedidos (cliente_id, status, total) VALUES (1, 'aprovado',  1299.90);
INSERT INTO pedidos (cliente_id, status, total) VALUES (2, 'aprovado',  4599.90);
INSERT INTO pedidos (cliente_id, status, total) VALUES (3, 'pendente',    49.90);
INSERT INTO pedidos (cliente_id, status, total) VALUES (1, 'aprovado',   389.80);
INSERT INTO pedidos (cliente_id, status, total) VALUES (4, 'cancelado',  299.90);

-- Inserindo itens dos pedidos
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unit) VALUES (1, 1, 1, 1299.90);
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unit) VALUES (2, 2, 1, 4599.90);
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unit) VALUES (3, 3, 1,   49.90);
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unit) VALUES (4, 4, 1,   89.90);
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unit) VALUES (4, 5, 1,  299.90);
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unit) VALUES (5, 5, 1,  299.90);
