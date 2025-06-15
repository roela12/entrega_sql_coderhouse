USE ecommerce;

-- valores de prueba

INSERT INTO paises (nombre) VALUES 
('Argentina'), ('México'), ('Colombia'), ('Chile'), 
('Perú'), ('Uruguay'), ('Ecuador'), ('Bolivia');

INSERT INTO provincias (id_pais, nombre) VALUES
(1, 'Buenos Aires'), (1, 'Córdoba'),
(2, 'Jalisco'), (2, 'Nuevo León'),
(3, 'Antioquia'), (3, 'Cundinamarca'),
(4, 'Santiago'), (4, 'Valparaíso');

INSERT INTO clientes (telefono, dni, nombre, direccion, email, nacimiento, id_provincia, id_pais) VALUES
(1123456789, 30500123, 'Juan Pérez', 'Av. Siempre Viva 123', 'juan.perez@gmail.com', '1990-05-20', 1, 1),
(1123456790, 30500124, 'María Gómez', 'Calle 9 #12-34', 'maria.gomez@hotmail.com', '1985-03-14', 2, 1),
(1512345678, 10800123, 'Luis Martínez', 'Colonia Roma Norte', 'luis.mtz@yahoo.com', '1992-11-02', 3, 2),
(1587654321, 10800124, 'Ana Ramírez', 'Av. Insurgentes Sur', 'ana.ramirez@outlook.com', '1988-07-22', 4, 2),
(1012345678, 40700123, 'Carlos Torres', 'Cra. 15 #80-20', 'carlos.torres@correo.com', '1991-04-10', 5, 3),
(1176543210, 40700124, 'Laura Mendoza', 'Calle 45 #10-23', 'laura.mendoza@gmail.com', '1986-12-30', 6, 3),
(187654321, 50900123, 'Diego Rojas', 'Calle Falsa 456', 'diego.rojas@gmail.com', '1993-06-17', 7, 4),
(187654322, 50900124, 'Camila Navarro', 'Av. Los Leones 900', 'camila.navarro@live.com', '1994-09-08', 8, 4);

INSERT INTO categorias (nombre) VALUES
('Electrónica'), ('Hogar'), ('Deportes'), ('Ropa'),
('Juguetes'), ('Libros'), ('Mascotas'), ('Belleza');

INSERT INTO productos (precio, stock, nombre, descripcion, caracteristicas, fecha_caducidad, id_categoria) VALUES
(15000, 10, 'Auriculares Bluetooth', 'Auriculares inalámbricos con micrófono', 'Bluetooth 5.0, batería 10h', NULL, 1),
(35000, 5, 'Aspiradora Robot', 'Robot inteligente de limpieza', 'Sensores inteligentes, carga automática', NULL, 2),
(20000, 15, 'Bicicleta MTB', 'Bicicleta de montaña', 'Frenos de disco, suspensión delantera', NULL, 3),
(5000, 25, 'Campera deportiva', 'Campera rompeviento impermeable', 'Talles S a XL', NULL, 4),
(3000, 40, 'Muñeca interactiva', 'Muñeca que habla y canta', 'Requiere baterías AA', NULL, 5),
(2500, 50, 'Novela romántica', 'Libro de ficción contemporánea', '300 páginas', NULL, 6),
(1200, 20, 'Alimento para perro', 'Bolsa de 10kg', 'Raza mediana, pollo y arroz', '2026-01-01', 7),
(1800, 30, 'Crema hidratante', 'Para todo tipo de piel', 'Con vitamina E', '2025-12-01', 8);

INSERT INTO carritos (id_producto, cantidad) VALUES
(1, 1, 15000),
(2, 1, 35000),
(3, 1, 20000),
(4, 2, 10000),
(5, 3, 9000),
(6, 1, 2500),
(7, 1, 1200),
(8, 2, 3600);

INSERT INTO mediospago (medio_pago) VALUES
('Tarjeta de crédito'), ('Tarjeta de débito'), ('Transferencia bancaria'), 
('Pago en efectivo'), ('MercadoPago'), ('PayPal'), 
('Crédito en cuenta'), ('Bitcoin');

INSERT INTO pedidos (id_cliente, id_carrito, observaciones, id_mediospago) VALUES
(1, 1, 'Entregar por la mañana', 1),
(2, 2, 'Llamar antes de entregar', 2),
(3, 3, 'Enviar factura electrónica', 3),
(4, 4, '', 4),
(5, 5, '', 5),
(6, 6, '', 6),
(7, 7, 'Cliente frecuente', 7),
(8, 8, 'Entregar a vecino si no está', 8);
