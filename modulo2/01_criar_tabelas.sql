-- Tabela de pedidos
CREATE TABLE pedidos (
    id         SERIAL         PRIMARY KEY,
    cliente_id INTEGER        REFERENCES clientes(id),
    status     VARCHAR(20)    DEFAULT 'pendente',
    total      NUMERIC(10,2),
    criado_em  TIMESTAMP      DEFAULT NOW()
);

-- Tabela de itens do pedido
CREATE TABLE itens_pedido (
    id          SERIAL         PRIMARY KEY,
    pedido_id   INTEGER        REFERENCES pedidos(id),
    produto_id  INTEGER        REFERENCES produtos(id),
    quantidade  INTEGER        NOT NULL,
    preco_unit  NUMERIC(10,2)  NOT NULL
);
