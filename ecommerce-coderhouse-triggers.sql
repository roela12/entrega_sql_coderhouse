USE ecommerce

-- trigger para calcular el valor total cuando se crea un nuevo carrito
DELIMITER $$

CREATE TRIGGER trg_carrito_insert
BEFORE INSERT ON carritos
FOR EACH ROW
BEGIN
  DECLARE precio_producto FLOAT;

  SELECT precio INTO precio_producto
  FROM productos
  WHERE id = NEW.id_producto;

  SET NEW.valor_total = precio_producto * NEW.cantidad;
END $$

DELIMITER ;

-- trigger para cuando se actualiza la cantidad o el producto en un carrito existente
DELIMITER $$

CREATE TRIGGER trg_carrito_update
BEFORE UPDATE ON carritos
FOR EACH ROW
BEGIN
  DECLARE precio_producto FLOAT;

  SELECT precio INTO precio_producto
  FROM productos
  WHERE id = NEW.id_producto;

  SET NEW.valor_total = precio_producto * NEW.cantidad;
END $$

DELIMITER ;

-- trigger para modificar el total de un carrito cuando un producto cambia de precio
DELIMITER $$

CREATE TRIGGER trg_producto_update
AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
  IF OLD.precio != NEW.precio THEN
    UPDATE carritos
    SET valor_total = NEW.precio * cantidad
    WHERE id_producto = NEW.id;
  END IF;
END $$

DELIMITER ;

