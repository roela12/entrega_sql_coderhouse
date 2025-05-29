USE ecommerce;

-- valores de prueba

INSERT INTO clientes (telefono ,dni, nombre, direccion, email, nacimiento) 
VALUES (153573651,'40381492','Raul Martinez', 'Av. 9 de Julio 1453', 'raul16@gmail.com', '2000-05-07'),
       (158476126,'28194031','Sergio Perez', 'Av. Velez Sarfield 1490', 'sergio15@gmail.com', '1978-11-21'),
       (150386493,'43109563','Maria Pedraza', 'Av. Juan B. Justo 3213', 'mariape45@gmail.com', '2002-07-13'),
       (158472655,'31583019','Antonela Gomez', 'Av. Nuevo Mundo 523', 'anto13@gmail.com', '1992-09-09');
       
INSERT INTO productos (precio ,stock, nombre) 
VALUES (500500, 14,'Samsung A55'),
       (300499, 10,'Motorola Edge'),
       (55000, 52,'Lg T310'),
       (850000, 8,'Xiaomi 14');
       
INSERT INTO carritos (id_producto ,cantidad) 
VALUES (3, 2),
       (1, 1),
       (1, 2),
       (4, 1);
       
INSERT INTO pedidos (id_cliente ,id_carrito, medio_pago) 
VALUES (1, 1, 'Credit card'),
       (2, 2, 'Credit card'),
       (3, 3, 'Credit card'),
       (4, 4, 'Cash');