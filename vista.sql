use vistas;

CREATE VIEW v_empleado_detalle AS
SELECT
   e.id,
   e.nombre,
   e.salario,
   d.nombre AS departamento
FROM t_empleado e 
INNER JOIN t_departamento d 
ON e.departamento_id = d.id;


-- consultar vistas

SELECT * FROM v_empleado_alto_salario;





-- INSERT (Solo en vistas simples actualizadas)

INSERT INTO v_empleado_alto_salario (id,nombre,salario)
   VALUES (151,'Juan Perez',1550000);


-- UPDATE
UPDATE v_empleado_alto_salario
    SET salario = salario * 1.1
    WHERE id = 13;


-- DELETE
DELETE FROM v_empleado_alto_salario
   WHERE salario < 1100000;


-- Elimina la vista v_empleado_alto_salario
DROP VIEW v_empleado_alto_salario;



CREATE TABLE nombre_tabla
{

   columna 1 INT AUTO_INCREMENT PRYMARY KEY,
   columna2
   columna3
   columna4
}