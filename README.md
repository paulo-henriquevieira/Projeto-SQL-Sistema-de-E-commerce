# 🛒 Projeto SQL — Sistema de E-commerce

Repositório criado para documentar meu aprendizado prático de SQL, do básico ao avançado.  
O projeto consiste em construir do zero o banco de dados de um e-commerce real, aplicando os conceitos estudados em cada módulo.

---

## 📌 Sobre o Projeto

Ao invés de estudar SQL de forma isolada, estou construindo um sistema completo e funcional que qualquer empresa reconheceria como algo real.

**Banco de dados:** PostgreSQL 18  
**Ferramenta:** psql via PowerShell  
**Abordagem:** aprendizado progressivo — cada módulo adiciona uma nova camada ao sistema

---

## 🗂️ Estrutura do Banco de Dados

```
ecommerce
├── clientes        → quem compra na loja
├── categorias      → agrupamento dos produtos
├── produtos        → catálogo da loja
├── pedidos         → compras realizadas
├── itens_pedido    → produtos dentro de cada pedido
└── pagamentos      → registros de pagamento
```

---

## 📚 Módulos

| Módulo | Tema | Status |
|--------|------|--------|
| 1 | Fundamentos — CREATE, INSERT, SELECT, WHERE | ✅ Concluído |
| 2 | JOINs e Relacionamentos | 🔜 Em breve |
| 3 | Agregações e Agrupamentos | 🔜 Em breve |
| 4 | Subqueries e CTEs | 🔜 Em breve |
| 5 | Window Functions | 🔜 Em breve |
| 6 | Performance e Boas Práticas | 🔜 Em breve |

---

## 🚀 Como reproduzir o projeto

1. Instale o [PostgreSQL](https://www.postgresql.org/download/)
2. Abra o terminal e conecte:
```bash
psql -U postgres
```
3. Crie o banco:
```sql
CREATE DATABASE ecommerce;
\c ecommerce
```
4. Execute os scripts de cada módulo em ordem:
```bash
\i modulo1/01_criar_tabelas.sql
\i modulo1/02_inserir_dados.sql
```

---

## 👤 Autor

**Paulo**  
Analista de Logística em transição para a área de Dados  

---

> Projeto em andamento — atualizado a cada módulo concluído.
