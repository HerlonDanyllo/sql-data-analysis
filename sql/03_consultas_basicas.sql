/* 1. Consultar todos os clientes */
SELECT * 
FROM clientes;

/* 2. Consultar os produtos */
SELECT * 
FROM produtos;

/* 3. Produots mais caros */
SELECT
	produto,
	categoria,
	preco
FROM produtos
ORDER BY preco DESC;

/* 4. Pedidos mais recentes */
SELECT
	id_pedido,
	id_cliente,
	id_produto,
	quantidade
FROM pedidos
ORDER BY data_pedido DESC;

/* 5. Produtos da categoria eletronicos */
SELECT
	produto,
	preco
FROM produtos
WHERE categoria = 'Eletrônicos'
ORDER BY preco DESC;
