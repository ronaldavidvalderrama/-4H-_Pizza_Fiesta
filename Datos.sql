-- Active: 1749217099138@@127.0.0.1@3307@pizzeria_db

-- TABLA CLIENTES

INSERT INTO clientes (nombre, telefono, direccion) VALUES
('Juan Perez', '123456789', 'Calle Falsa 123'),
('Maria Lopez', '987654321', 'Avenida Siempre Viva 456'),
('Carlos Gomez', '555555555', 'Boulevard de los Sueños Rotos 789');

-- TABLA PEDIDOS

INSERT INTO pedidos (id_cliente, hora_recogida, estado) VALUES
(1, '2023-10-01 18:00:00', 'pagado'),
(2, '2023-10-01 19:00:00', 'no pagado'),
(3, '2023-10-01 20:00:00', 'pagado');

-- TABLA PRODUCTOS

INSERT INTO productos (nombre, tipo, tamaño, precio_base) VALUES
('Pizza Margarita', 'pizza', 'mediana', 8000),
('Pizza Pepperoni', 'pizza', 'grande', 10000),
('Coca Cola', 'bebida', 'mediana', 2000),
('Fanta Naranja', 'bebida', 'pequeña', 1500);

-- TABLA DETALLE_PEDIDO

INSERT INTO Detalle_pedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 2, 8000),  -- 2 Pizzas Margarita
(1, 3, 1, 2000),  -- 1 Coca Cola
(2, 2, 1, 10000), -- 1 Pizza Pepperoni
(2, 4, 2, 1500),  -- 2 Fanta Naranja
(3, 1, 1, 8000);   -- 1 Pizza Margarita

-- TABLA INGREDIENTES

INSERT INTO ingredientes (nombre, stock, precio_extra) VALUES
('Queso Extra', 50, 1000),
('Champiñones', 30, 800),
('Pimiento', 20, 600),
('Cebolla', 25, 500);

-- TABLA PIZZA_INGREDIENTES

INSERT INTO pizza_ingredientes (id_producto, id_ingrediente) VALUES
(1, 1),  -- Pizza Margarita con Queso Extra
(1, 2),  -- Pizza Margarita con Champiñones
(2, 1),  -- Pizza Pepperoni con Queso Extra
(2, 3);  -- Pizza Pepperoni con Pimiento



-- TABLA COMBOS

INSERT INTO combo (nombre, precio) VALUES
('Combo Familiar', 25000),  -- Incluye 2 Pizzas Grandes y 2 Bebidas Grandes
('Combo Pareja', 15000),    -- Incluye 1 Pizza Mediana y 2 Bebidas Medianas
('Combo Individual', 8000);  -- Incluye 1 Pizza Pequeña y 1 Bebida Pequeña

-- TABLA COMBO_PRODUCTOS

INSERT INTO combo_producto (id_combo, id_producto) VALUES
(1, 2),  -- Combo Familiar de Pizza Pepperoni 
(1, 3),  -- Combo Familiar con Coca Cola 
(1, 4),  -- Combo Familiar con Fanta Naranja
(2, 1),  -- Combo Pareja de Pizza Margarita
(2, 3),  -- Combo Pareja con Coca Cola
(3, 1),  -- Combo Individual de Pizza Margarita
(3, 4);  -- Combo Individual con Fanta Naranja


SELECT * FROM clientes;

SELECT * FROM pedidos;

SELECT * FROM productos;

SELECT * FROM Detalle_pedido;

SELECT * FROM ingredientes;

SELECT * FROM pizza_ingredientes;

SELECT * FROM combo;

SELECT * FROM combo_producto;



-- Consultas de prueba para verificar la integridad de los datos

--1. **Registrar un nuevo cliente:**

INSERT INTO clientes (nombre, telefono, direccion) VALUES
('Ana Torres', '111222333', 'Calle Nueva 456');

-- 2. **Agregar un nuevo producto (pizza) al menú:**

INSERT INTO productos (nombre, tipo, tamaño, precio_base) VALUES
('Pizza BBQ', 'pizza', 'grande', 12000);

-- 3. **Registrar una bebida en el menú:**

INSERT INTO productos (nombre, tipo, tamaño, precio_base) VALUES
('Sprite', 'bebida', 'mediana', 2500);

-- 4. **Agregar un ingrediente a la base de datos:**

INSERT INTO ingredientes (nombre, stock, precio_extra) VALUES
('Albahaca Fresca', 40, 700);

-- 5. **Crear un pedido para un cliente:**

INSERT INTO pedidos (id_cliente, hora_recogida, estado) VALUES
(4, '2023-10-02 18:30:00', 'pagado');

-- 6. **Añadir productos a un pedido específico:**

INSERT INTO Detalle_pedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(4, 5, 1, 12000),  -- 1 Pizza BBQ
(4, 6, 2, 2500);   -- 2 Sprites




