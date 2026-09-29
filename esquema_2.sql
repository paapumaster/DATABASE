SELECT schema_name
FROM information_schema.schemata;



-- Una consulta similar a la anterior usando el comando "SHOW"
SHOW DATABASES;



-- Para listar todas las tablas dentro de la base de datos "mi_base_de_datos"
SELECT table_name
FROM information_schema.tables
WHERE table_schema = "empresa";


-- Como por ejemplo, para una base de datos llamada "esquema" seria asi..

SELECT table_name
FROM information_schema.tables
WHERE table_schema = "esquema";


-- El comando "SHOW" tambien ofrece una alternativa 
USE esquema;
SHOW TABLES;


SELECT column_name,
       data_type,
       is_nullable,
       column_default
FROM information_schema.columns
WHERE table_schema = 'empresa' AND
      table_name = 't_personal';


-- DESCRIBE mi_base_de_datos.mi_tabla;

-- por ejemplo

DESCRIBE esquema.t_personal;

-- o

DESC esquema.t_personal;



-- seleccionar cosas de la base de datos
SELECT index_name,
       column_name,
       non_unique,
       seq_in_index
FROM information_schema.statistics
WHERE table_schema = 'esquema' AND
      table_name = 't_personal';


-- el comando "SHOW INDEX" ofrece una salida similar

SHOW INDEX
FROM mi_tabla
FROM mi_base_de_datos;

-- por ejemplo seria asi

SHOW INDEX
FROM t_personal
FROM esquema;
      

-- consultas a restricciones
-- metodo 1
SELECT 
    constraint_name,
    constraint_type
FROM 
    information_schema.table_constraints
WHERE
    table_schema = 'esquema' AND
    table_name = 't_cliente';


-- metodo 2
SELECT 
    constraint_name,
    constraint_type
FROM 
    information_schema.table_constraints
WHERE 
    LOWER(table_schema) = 'empresa' AND 
    LOWER(table_name) = 't_personal';



-- CLAVES FORANEAS
-----------------------------
-- detalles de claves foraneas

SELECT 
    k.constraint_name,
    k.column_name,
    k.referenced_table_name,
    k.referenced_column_name
FROM
    information_schema.key_column_usage as k 
JOIN
    information_schema.table_constraints as t 
    ON k.constraint_name = t.constraint_name
    AND k.table_schema = t.table_schema
WHERE
     t.constraint_type = "FOREIGN KEY"
     AND k.table_schema = "esquema"
     AND k.table_name = "t_personal";