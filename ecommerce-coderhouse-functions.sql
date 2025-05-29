USE ecommerce;

-- funcion para calcular el valor total de un carrito
DELIMITER $$

CREATE FUNCTION calcular_valor_total_cliente(cliente_id INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
  DECLARE total FLOAT;

  SELECT SUM(p.precio * c.cantidad)
  INTO total
  FROM pedidos pe
  JOIN carritos c ON pe.id_carrito = c.id
  JOIN productos p ON c.id_producto = p.id
  WHERE pe.id_cliente = cliente_id;

  RETURN IFNULL(total, 0);
END $$

DELIMITER ;

SELECT calcular_valor_total_cliente(1);
