SELECT p.nome AS produto, f.nome AS fornecedor, p.estoque
FROM Produto p
INNER JOIN Fornecedor f ON p.fornecedor_id = f.fornecedor_id;
