# SQL Data Analysis

## Sobre o projeto

Projeto desenvolvido para praticar e demonstrar o uso de SQL para análise de dados de vendas utilizando PostgreSQL.

O projeto utiliza dados de clientes, produtos e pedidos para construir consultas SQL, realizar relacionamentos entre tabelas e gerar análises de negócio.

## Tecnologias utilizadas

- PostgreSQL
- SQL
- Git e GitHub

## Estrutura do projeto

```text id="c5q0qv"
sql-data-analysis/
│
├── data/
│   ├── clientes.csv
│   ├── produtos.csv
│   └── pedidos.csv
│
├── sql/
│   ├── 01_criacao_tabelas.sql
│   ├── 02_carga_dados.sql
│   ├── 03_consultas_basicas.sql
│   ├── 04_joins.sql
│   ├── 05_agregacoes.sql
│   ├── 06_cte.sql
│   └── 07_ranking_produtos.sql
│
├── .gitignore
└── README.md
```

## Modelo de dados

O banco de dados possui três tabelas principais:

- `clientes`: informações dos clientes;
- `produtos`: informações dos produtos;
- `pedidos`: registros das vendas.

Os relacionamentos são estabelecidos por meio das chaves:

```text id="f7v2jw"
clientes.id_cliente
        ↑
        │
pedidos.id_cliente

produtos.id_produto
        ↑
        │
pedidos.id_produto
```

## Consultas desenvolvidas

O projeto apresenta exemplos de diferentes recursos do SQL.

### Consultas básicas

- `SELECT`
- `WHERE`
- `ORDER BY`

### Relacionamento entre tabelas

- `INNER JOIN`
- múltiplos `JOINs`

### Agregações

- `SUM`
- `AVG`
- `GROUP BY`

### Consultas avançadas

- CTE (`WITH`)
- subqueries
- funções de janela
- `RANK()`
- `PARTITION BY`

## Análises realizadas

Entre as análises desenvolvidas estão:

- faturamento total;
- faturamento por categoria;
- faturamento por cliente;
- quantidade vendida por produto;
- clientes acima do faturamento médio;
- ranking de clientes por faturamento;
- ranking de produtos dentro de cada categoria.

## Objetivo

O objetivo do projeto é demonstrar conhecimentos práticos de SQL aplicados à análise de dados, incluindo modelagem relacional, consultas, agregações e funções avançadas.

O projeto também faz parte da construção de um portfólio voltado à área de Dados e Engenharia de Dados.