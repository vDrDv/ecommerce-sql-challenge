SELECT c.nome, COUNT(p.pedido_id) AS total_pedidos
FROM Cliente c
LEFT JOIN Pedido p ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id;
