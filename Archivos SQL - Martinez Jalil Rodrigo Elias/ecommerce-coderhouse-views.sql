USE ecommerce;

-- Crea la vista detallada de clientes
CREATE OR REPLACE VIEW vista_clientes_detalle AS
SELECT 
  c.id AS id_cliente,
  c.nombre,
  c.email,
  c.telefono,
  c.dni,
  c.direccion,
  c.nacimiento,
  c.fecha_alta,
  p.nombre AS pais,
  pr.nombre AS provincia
FROM clientes c
JOIN paises p ON c.id_pais = p.id
JOIN provincias pr ON c.id_provincia = pr.id;


-- Crea la vista detallada de productos
CREATE OR REPLACE VIEW vista_pedidos_detalle AS
SELECT 
  pe.id AS id_pedido,
  cli.nombre AS cliente,
  cli.email,
  pr.nombre AS producto,
  ca.cantidad,
  ca.valor_total,
  mp.medio_pago,
  pe.fecha_pedido,
  pe.observaciones
FROM pedidos pe
JOIN clientes cli ON pe.id_cliente = cli.id
JOIN carritos ca ON pe.id_carrito = ca.id
JOIN productos pr ON ca.id_producto = pr.id
JOIN mediospago mp ON pe.id_mediospago = mp.id;


-- Crea la vista de clientes con resumen de pedidos y gastos
CREATE OR REPLACE VIEW vista_resumen_clientes AS
SELECT 
  c.id AS id_cliente,
  c.nombre AS cliente,
  COUNT(p.id) AS total_pedidos,
  SUM(car.valor_total) AS total_gastado
FROM clientes c
JOIN pedidos p ON c.id = p.id_cliente
JOIN carritos car ON p.id_carrito = car.id
GROUP BY c.id, c.nombre;
