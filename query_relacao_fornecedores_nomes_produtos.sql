SELECT f.nome AS fornecedor, p.nome AS produto
FROM Fornecedor f
INNER JOIN Produto p ON f.fornecedor_id = p.fornecedor_id;
