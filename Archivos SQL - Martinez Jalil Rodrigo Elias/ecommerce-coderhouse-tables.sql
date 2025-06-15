DROP DATABASE IF EXISTS ecommerce;
CREATE DATABASE ecommerce ;
USE ecommerce;

CREATE TABLE paises (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);
CREATE TABLE provincias (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_pais INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_pais) REFERENCES paises(id),
  nombre VARCHAR(100) NOT NULL
);
CREATE TABLE clientes (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  telefono INT,
  dni INT,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(100),
  email VARCHAR(100) NOT NULL,
  nacimiento DATE,
  fecha_alta DATE DEFAULT (CURDATE()),
  id_provincia INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_provincia) REFERENCES provincias(id),
  id_pais INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_pais) REFERENCES paises(id)
);
CREATE TABLE categorias (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);
CREATE TABLE productos (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  precio FLOAT,
  stock INT,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(100),
  caracteristicas VARCHAR(100),
  fecha_caducidad DATE,
  id_categoria INT UNSIGNED  NOT NULL,
  FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);
CREATE TABLE carritos (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_producto INT UNSIGNED  NOT NULL,
  FOREIGN KEY (id_producto) REFERENCES productos(id),
  cantidad INT,
  valor_total INT
);
CREATE TABLE mediospago (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  medio_pago VARCHAR(100) NOT NULL
);
CREATE TABLE pedidos (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT UNSIGNED  NOT NULL,
  id_carrito INT UNSIGNED  NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id),
  FOREIGN KEY (id_carrito) REFERENCES carritos(id),
  observaciones VARCHAR(100),
  fecha_pedido DATE DEFAULT (CURDATE()),
  id_mediospago INT UNSIGNED  NOT NULL,
  FOREIGN KEY (id_mediospago) REFERENCES mediospago(id)
);