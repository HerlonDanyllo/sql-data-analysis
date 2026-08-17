/* 1. Pedidos com o nome do cliente */
SELECT
	p.id_pedido,
	p.data_pedido,
	c.nome AS cliente,
	p.quantidade
FROM pedidos AS p
INNER JOIN clientes AS c
	ON p.id_cliente = c.id_cliente
ORDER BY p.data_pedido;

/* 2. Pedidos com cliente e produto */
SELECT
	p.id_pedido,
	p.data_pedido,
	c.nome AS cliente,
	pr.produto,
	pr.categoria,
	p.quantidade,
	pr.preco
FROM pedidos AS p
INNER JOIN clientes AS c
	ON p.id_cliente = c.id_cliente
INNER JOIN produtos AS pr
	ON p.id_produto = pr.id_produto
ORDER BY p.data_pedido;

/* 3. Calcular o valor de cada pedido */
SELECT
	p.id_pedido,
	p.data_pedido,
	c.nome AS cliente,
	pr.produto,
	pr.categoria,
	p.quantidade,
	pr.preco,
	p.quantidade * pr.preco AS valor_total
FROM pedidos AS p
INNER JOIN clientes AS c
	ON p.id_cliente = c.id_cliente
INNER JOIN produtos AS pr
	ON p.id_produto = pr.id_produto
ORDER BY p.data_pedido;