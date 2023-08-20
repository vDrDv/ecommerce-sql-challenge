CREATE TABLE Cliente (
    cliente_id INT PRIMARY KEY,
    nome VARCHAR(255),
    tipo VARCHAR(2)
);

CREATE TABLE Pagamento (
    pagamento_id INT PRIMARY KEY,
    cliente_id INT,
    forma_pagamento VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

CREATE TABLE Entrega (
    entrega_id INT PRIMARY KEY,
    cliente_id INT,
    status VARCHAR(50),
    codigo_rastreio VARCHAR(100),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

CREATE TABLE Fornecedor (
    fornecedor_id INT PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE Produto (
    produto_id INT PRIMARY KEY,
    nome VARCHAR(255),
    fornecedor_id INT,
    estoque INT,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedor(fornecedor_id)
);

CREATE TABLE Pedido (
    pedido_id INT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade INT,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id),
    FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
);
