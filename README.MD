# Examen #1 – Pizza Fiesta 🍕

## Descripción General

La pizzería **Pizza Fiesta** requiere una solución digital para mejorar la gestión de sus operaciones diarias. Actualmente, la falta de un sistema eficaz genera dificultades en el seguimiento de pedidos, control de inventario y manejo de precios personalizados. Este proyecto propone una base de datos relacional implementada en MySQL que automatiza estas tareas, mejorando la experiencia tanto del cliente como del personal de la pizzería.

---

## Objetivos del Proyecto

- Diseñar e implementar una base de datos relacional en MySQL.
- Gestionar de forma eficiente:
  - Clientes
  - Productos (pizzas, bebidas e ingredientes)
  - Pedidos
  - Personalización de pizzas
  - Control de pagos y recogidas
- Asegurar la integridad de los datos mediante claves primarias y foráneas.
- Facilitar la ejecución de consultas SQL sobre el sistema.

---

## Estructura del Proyecto

| Archivo                   | Descripción                                                                 |
|--------------------------|-----------------------------------------------------------------------------|
| `estructura.sql`         | Contiene la estructura de la base de datos: tablas, claves primarias y foráneas. |
| `datos.sql`              | Incluye datos de prueba representativos del funcionamiento real del sistema. |
| `README.md`              | Este documento con la descripción, instrucciones de uso y ejemplos de consultas. |
| `modelo_logico.png` / `drawsql_link` | Evidencia visual del modelo lógico desarrollado para la base de datos.     |

---

## Instrucciones de Ejecución

1. **Abrir MySQL Workbench o cualquier cliente de MySQL.**
2. Ejecutar el archivo `estructura.sql` para crear la base de datos y sus tablas.
3. Ejecutar el archivo `datos.sql` para insertar los datos de prueba.
4. Verificar que las relaciones estén correctamente establecidas y que los datos reflejen escenarios reales.

---

## Funcionalidades Principales del Sistema

### 👤 Gestión de Clientes
- Registro de nombre, número de contacto y dirección.
  
### 🍕 Gestión de Productos
- Pizzas clasificadas por tamaño: pequeña, mediana y grande.
- Bebidas disponibles.
- Ingredientes personalizables para cada pizza.
- Control de combos (pizzas + bebidas).

### 🧾 Gestión de Pedidos
- Registro del pedido solo tras confirmación de pago.
- Indicación de la hora de recogida.
- Costo adicional por ingredientes extra.

### 📋 Detalles del Pedido
- Visualización del proceso de preparación y personalización.
- Cálculo dinámico del costo según tamaño e ingredientes añadidos.

### 💳 Pagos y Recogida
- Preparación de pedidos únicamente tras confirmación de pago.
- No se manejan envíos, solo recogida en tienda.
