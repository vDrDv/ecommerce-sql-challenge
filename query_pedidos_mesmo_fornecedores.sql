SELECT c.nome AS cliente, f.nome AS fornecedor
FROM Cliente c
INNER JOIN Pedido pe ON c.cliente_id = pe.cliente_id
INNER JOIN Produto pr ON pe.produto_id = pr.produto_id
INNER JOIN Fornecedor f ON pr.fornecedor_id = f.fornecedor_id
GROUP BY c.cliente_id, f.fornecedor_id
HAVING COUNT(DISTINCT pr.fornecedor_id) > 1;
