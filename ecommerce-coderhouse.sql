DROP DATABASE IF EXISTS ecommerce;
CREATE DATABASE ecommerce ;
USE ecommerce;
CREATE TABLE CLIENTES (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  telefono INT,
  dni INT,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(100),
  email VARCHAR(100) NOT NULL,
  nacimiento DATE,
  fecha_de_alta DATE
);
CREATE TABLE PRODUCTOS (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  precio INT,
  stock INT,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(100),
  caracteristicas VARCHAR(100),
  fecha_caducidad DATE
);
CREATE TABLE CARRITOS (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_producto INT UNSIGNED  NOT NULL,
  FOREIGN KEY (id_producto) REFERENCES PRODUCTOS(id),
  cantidad INT,
  valor_total INT
);
CREATE TABLE PEDIDOS (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT UNSIGNED  NOT NULL,
  id_carrito INT UNSIGNED  NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id),
  FOREIGN KEY (id_carrito) REFERENCES CARRITOS(id),
  observaciones VARCHAR(100),
  medio_de_pago VARCHAR(100) NOT NULL,
  fecha_pedido DATE
);