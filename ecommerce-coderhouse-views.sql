USE ecommerce;

-- Crea la vista de clientes
CREATE OR REPLACE VIEW clientes_view AS
SELECT * FROM clientes;

-- Crea la vista de productos
CREATE OR REPLACE VIEW productos_view AS
SELECT * FROM productos;

-- Crea la vista de carritos
CREATE OR REPLACE VIEW carritos_view AS
SELECT * FROM carritos;

-- Crea la vista de pedidos
CREATE OR REPLACE VIEW pedidos_view AS
SELECT * FROM pedidos;