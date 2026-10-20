CREATE DATABASE IF NOT EXISTS indices;
USE indices;

-- --- TABLA 1: EMPLEADO ---
DROP TABLE IF EXISTS t_empleado;
CREATE TABLE t_empleado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    departamento VARCHAR(50),
    fecha_contratacion DATE 
);

-- Creación de un índice no único
CREATE INDEX i_apellido ON t_empleado(apellido);

-- Ver información sobre los índices de la tabla (faltaba el punto y coma)
SHOW INDEX FROM t_empleado;


-- --- TABLA 2: PRODUCTO ---
DROP TABLE IF EXISTS t_producto;
CREATE TABLE t_producto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    categoria VARCHAR(100),
    precio INT,
    stock INT
);

-- Consulta de ejemplo (corregida la sintaxis)
SELECT * FROM t_producto WHERE categoria = 'Congelados';

-- Para optimizarla, creamos un índice no único en la columna categoría
CREATE INDEX i_categoria ON t_producto(categoria);

SHOW INDEX FROM t_producto;


-- --- TABLA 3: CLIENTE ---
DROP TABLE IF EXISTS t_cliente;
CREATE TABLE t_cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    ciudad VARCHAR(100),
    fecha_registro DATE
);

SHOW INDEX FROM t_cliente;

CREATE INDEX i_ciudad ON t_cliente(ciudad);

SHOW INDEX FROM t_cliente;

-- Ejemplo para eliminar un índice:
-- DROP INDEX nombre_indice ON nombre_tabla;
DROP INDEX i_ciudad ON t_cliente;