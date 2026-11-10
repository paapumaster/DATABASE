-- Crea BD, tabla y datos.

DROP DATABASE IF EXISTS funciones_de_conversion;

CREATE DATABASE funciones_de_conversion;

USE funciones_de_conversion;

CREATE TABLE t_venta
    (
    id INT PRIMARY KEY,
    producto VARCHAR(100),
    precio VARCHAR(20),    -- Almacenado como texto
    cantidad VARCHAR(10),    -- Almacenado como texto
    fecha_venta VARCHAR(50)    -- Almacenado como texto
    );

INSERT INTO t_venta VALUES
    (1, 'Notebook', '550900.50', '4', '2025-10-01'),
    (2, 'Mouse', '9999.99', '7', '2024-09-07'),
    (3, 'Teclado', '17500.00', '6', '2025-08-13'),
    (4, 'Monitor', '150000.75', '5', '2025-03-20'),
    (5, 'Impresora', '75000.75', '8', '2024-10-20');




-- Conversion de texto a numero

-- convertir string a resultado (resultado 123)
-- nota : entre "CAST" y el "("NO PUEDE HABER NINGUN ESPACIO")

SELECT CAST('123 AS SIGNED') AS numero;

-- convertir string a decimal (resultado : 45.67)
SELECT CAST('45.67' AS DECIMAL(10,2)) AS precio;





-- CONVERSION DE NUMERO A TEXTO

-- Numero a string (resultado : '12345')
SELECT CAST(12345 AS CHAR) AS codigo;

-- con longitud especifica (resultado : '789')
SELECT CAST(789 AS CHAR) AS codigo_fijo;




-- Conversion de fechas
-- string a fecha
SELECT CAST('2025-10-13' AS DATE) AS fecha;

-- fecha a string
SELECT CAST(NOW() AS CHAR) AS fecha_texto;

-- extraer solo la fecha de un datetime (resultado : 2027-09-03)
SELECT CAST('2027-09-03 15:30:00' AS DATE ) AS solo_fecha;




-- calcular el total de ventas por producto

SELECT 
    producto,
    SUM(CAST(precio AS DECIMAL(10,2)) * CAST(cantidad AS SIGNED)) AS total_ventas_general
FROM t_venta
GROUP BY producto;