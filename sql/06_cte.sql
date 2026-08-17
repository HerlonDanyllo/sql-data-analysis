/* Ranking de clientes por faturamento */
WITH faturamento_clientes AS (
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
)

SELECT
	id_cliente,
	cliente,
	faturamento
FROM faturamento_clientes
ORDER BY faturamento DESC;

/* Clientes acima do faturamento médio */
WITH faturamento_clientes AS (
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
)

SELECT
	id_cliente,
	cliente,
	faturamento
FROM faturamento_clientes
WHERE faturamento > (
	SELECT AVG(faturamento)
	FROM faturamento_clientes
)
ORDER BY faturamento DESC;

/* Ranking dos clientes */
WITH faturamento_clientes AS (
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
)

SELECT
	id_cliente,
	cliente,
	faturamento,
	RANK() OVER (
		ORDER BY faturamento DESC
	) AS ranking
FROM faturamento_clientes
ORDER BY ranking;