SELECT f.nome
FROM Fornecedor f
INNER JOIN Produto pr ON f.fornecedor_id = pr.fornecedor_id
INNER JOIN Pedido pe ON pr.produto_id = pe.produto_id
INNER JOIN Cliente c ON pe.cliente_id = c.cliente_id
WHERE c.tipo = 'PJ';
