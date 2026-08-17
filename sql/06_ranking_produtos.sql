/* Ranking por categoria */
WITH vendas_produtos AS (
	SELECT
		pr.id_produto,
		pr.produto,
		pr.categoria,
		SUM(p.quantidade) AS quantidade_vendida,
		SUM(p.quantidade * pr.preco) AS faturamento
	FROM pedidos AS p
	INNER JOIN produtos AS pr
		ON p.id_produto = pr.id_produto
	GROUP BY
		pr.id_produto,
		pr.produto,
		pr.categoria
)

SELECT
	id_produto,
	produto,
	categoria,
	quantidade_vendida,
	faturamento,
	RANK() OVER (
		PARTITION BY categoria
		ORDER BY faturamento DESC
	) AS ranking_categoria
FROM vendas_produtos
ORDER BY
	categoria,
	ranking_categoria