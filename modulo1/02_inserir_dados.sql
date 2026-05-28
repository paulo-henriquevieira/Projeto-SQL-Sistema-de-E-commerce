-- ============================================================
-- MÓDULO 1 — Inserção de Dados
-- Projeto: Sistema de E-commerce
-- ============================================================

-- Inserindo categorias
INSERT INTO categorias (nome, descricao) VALUES ('Eletronicos',  'Smartphones, notebooks, acessorios');
INSERT INTO categorias (nome, descricao) VALUES ('Roupas',       'Vestuario masculino e feminino');
INSERT INTO categorias (nome, descricao) VALUES ('Livros',       'Literatura, tecnicos e didaticos');
INSERT INTO categorias (nome, descricao) VALUES ('Casa',         'Decoracao e utilidades domesticas');
INSERT INTO categorias (nome, descricao) VALUES ('Esportes',     'Equipamentos e roupas esportivas');

-- Inserindo clientes
INSERT INTO clientes (nome, email, telefone, cidade, estado) VALUES ('Ana Souza',   'ana@email.com',   '11999991111', 'Sao Paulo',      'SP');
INSERT INTO clientes (nome, email, telefone, cidade, estado) VALUES ('Bruno Lima',  'bruno@email.com', '21999992222', 'Rio de Janeiro', 'RJ');
INSERT INTO clientes (nome, email, telefone, cidade, estado) VALUES ('Carla Matos', 'carla@email.com', '31999993333', 'Belo Horizonte', 'MG');
INSERT INTO clientes (nome, email, telefone, cidade, estado) VALUES ('Diego Costa', 'diego@email.com', '41999994444', 'Curitiba',       'PR');
INSERT INTO clientes (nome, email, telefone, cidade, estado) VALUES ('Elena Nunes', 'elena@email.com', '51999995555', 'Porto Alegre',   'RS');

-- Inserindo produtos
INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Smartphone X',   'Celular 128GB',     1299.90,  50, 1);
INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Notebook Pro',   'Intel i7, 16GB RAM', 4599.90, 15, 1);
INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Camiseta Basica','100% algodao',         49.90, 200, 2);
INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Clean Code',     'Robert C. Martin',     89.90,  80, 3);
INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Tenis Runner',   'Para corrida',        299.90,  60, 5);
