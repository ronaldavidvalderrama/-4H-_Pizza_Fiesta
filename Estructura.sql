-- Active: 1749217099138@@127.0.0.1@3307@pizzeria_db
CREATE DATABASE IF NOT EXISTS pizzeria_db;
USE pizzeria_db;

DROP TABLE IF EXISTS pedidos;

SHOW TABLES;

CREATE TABLE clientes (
    id_cliente INT  AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_cliente)
);


CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    hora_recogida DATETIME NOT NULL,
    estado ENUM('pagado', 'no pagado') NOT NULL,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE productos (
    id_productos INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    tipo  ENUM('pizza', 'bebida') NOT NULL,
    tamaño ENUM('pequeña', 'mediana', 'grande') NOT NULL,
    precio_base INTEGER NOT NULL,
    PRIMARY KEY (id_productos)
);


CREATE TABLE Detalle_pedido (
    id_detalle INTEGER(11) AUTO_INCREMENT,
    id_pedido INTEGER(11) NOT NULL,
    id_producto INTEGER(11) NOT NULL,
    cantidad INTEGER NOT NULL,
    precio_unitario INTEGER NOT NULL,
    PRIMARY KEY (id_detalle),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES productos(id_productos)
);

CREATE TABLE ingredientes (
    id_ingredientes INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    stock INTEGER NOT NULL,
    precio_extra INTEGER NOT NULL,
    PRIMARY KEY (id_ingredientes)
);

CREATE TABLE pizza_ingredientes (
    id_pizza_ingredientes INT AUTO_INCREMENT,
    id_producto INT NOT NULL,
    id_ingrediente INT NOT NULL,
    PRIMARY KEY (id_pizza_ingredientes),
    FOREIGN KEY (id_producto) REFERENCES productos(id_productos),
    FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id_ingredientes)
)

CREATE TABLE combo (
    id_combo INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio INTEGER NOT NULL,
    PRIMARY KEY (id_combo)
);

CREATE TABLE combo_producto (
    id_combo_producto INT AUTO_INCREMENT,
    id_combo INT NOT NULL,
    id_producto INT NOT NULL,
    PRIMARY KEY (id_combo_producto),
    FOREIGN KEY (id_combo) REFERENCES combo(id_combo),
    FOREIGN KEY (id_producto) REFERENCES productos(id_productos)
);

