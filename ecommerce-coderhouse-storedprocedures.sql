USE ecommerce;

-- procerdimiento para actualizar el valor total de un carrito
DELIMITER $$

CREATE PROCEDURE actualizar_valor_total_carritos(IN cliente_id INT)
BEGIN
  UPDATE carritos c
  JOIN pedidos pe ON pe.id_carrito = c.id
  JOIN productos p ON c.id_producto = p.id
  SET c.valor_total = p.precio * c.cantidad
  WHERE pe.id_cliente = cliente_id;
END $$

DELIMITER ;

CALL actualizar_valor_total_carritos(1);