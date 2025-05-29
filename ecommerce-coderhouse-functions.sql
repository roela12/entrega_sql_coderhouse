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


-- funcion para obtener el nombre de un cliente por su id
DELIMITER $$

CREATE FUNCTION obtener_nombre_por_id(id_cliente INT)
RETURNS VARCHAR(100)
DETERMINISTIC
READS SQL DATA
BEGIN
  DECLARE nombre_cliente VARCHAR(100);

  SELECT nombre INTO nombre_cliente
  FROM clientes
  WHERE id = id_cliente;

  RETURN nombre_cliente;
END$$

DELIMITER ;

SELECT obtener_nombre_por_id(2);

