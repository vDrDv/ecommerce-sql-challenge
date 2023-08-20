-- Inserir exemplos de dados nas tabelas

-- Clientes
INSERT INTO Cliente (cliente_id, nome, tipo) VALUES
(1, 'João', 'PF'),
(2, 'Empresa A', 'PJ'),
(3, 'Maria', 'PF');

-- Formas de Pagamento
INSERT INTO Pagamento (pagamento_id, cliente_id, forma_pagamento) VALUES
(1, 1, 'Cartão de Crédito'),
(2, 1, 'Boleto'),
(3, 2, 'Cartão de Débito');

-- Entregas
INSERT INTO Entrega (entrega_id, cliente_id, status, codigo_rastreio) VALUES
(1, 1, 'Em Trânsito', 'ABC123'),
(2, 2, 'Entregue', 'XYZ456'),
(3, 3, 'Aguardando Retirada', 'DEF789');

-- Fornecedores
INSERT INTO Fornecedor (fornecedor_id, nome) VALUES
(1, 'Fornecedor X'),
(2, 'Fornecedor Y');

-- Produtos
INSERT INTO Produto (produto_id, nome, fornecedor_id, estoque) VALUES
(1, 'Produto A', 1, 50),
(2, 'Produto B', 2, 100),
(3, 'Produto C', 1, 25);

-- Pedidos
INSERT INTO Pedido (pedido_id, cliente_id, produto_id, quantidade) VALUES
(1, 1, 1, 2),
(2, 1, 2, 3),
(3, 2, 1, 1);
