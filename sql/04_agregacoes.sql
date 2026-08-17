/* 1. Faturamento total */
SELECT
	SUM(p.quantidade * pr.preco) AS faturamento_total
FROM pedidos AS p
INNER JOIN produtos AS pr
	ON p.id_produto = pr.id_produto;

/* 2. Faturamento por categoria */
SELECT
	pr.categoria,
	SUM(p.quantidade * pr.preco) AS faturamento
FROM pedidos AS p
INNER JOIN produtos AS pr
	ON p.id_produto = pr.id_produto
GROUP BY pr.categoria
ORDER BY faturamento DESC;

/* 3. Faturamento por cliente */
SELECT
	c.id_cliente,
	c.nome AS cliente,
	SUM(p.quantidade * pr.preco) AS faturamento
FROM pedidos AS p
INNER JOIN clientes AS c
	ON p.id_cliente = c.id_cliente
INNER JOIN produtos AS pr
	ON p.id_produto = pr.id_produto
GROUP BY
	c.id_cliente,
	c.nome
ORDER BY faturamento DESC;

/* 4. Quantidade vendida pro produto */
SELECT
	pr.produto,
	pr.categoria,
	SUM(p.quantidade) AS quantidade_vendida
FROM pedidos AS p
INNER JOIN produtos AS pr
	ON p.id_produto = pr.id_produto
GROUP BY
	pr.produto,
	pr.categoria
ORDER BY quantidade_vendida DESC;