CREATE TABLE clientes (
	id_cliente INTEGER PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	cidade VARCHAR(100) NOT NULL
);

CREATE TABLE produtos (
	id_produto INTEGER PRIMARY KEY,
	produto VARCHAR(100) NOT NULL,
	categoria VARCHAR(100) NOT NULL,
	preco NUMERIC(10, 2) NOT NULL
);

CREATE TABLE pedidos (
	id_pedido INTEGER PRIMARY KEY,
	id_cliente INTEGER NOT NULL,
	id_produto INTEGER NOT NULL,
	data_pedido DATE NOT NULL,
	quantidade INTEGER NOT NULL,

	CONSTRAINT fk_pedido_cliente
		FOREIGN KEY (id_cliente)
		REFERENCES clientes(id_cliente),

	CONSTRAINT fk_pedido_produto
		FOREIGN KEY (id_produto)
		REFERENCES produtos(id_produto)
);
