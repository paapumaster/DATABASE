CREATE DATABASE secuencia;
USE secuencia;

CREATE TABLE t_usuario
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    email VARCHAR(100)
);

-- INSERCION DE DATOS (EL ID SE GENERA AUTOMATICAMENTE)

INSERT INTO t_usuario
   (nombre, email)
VALUES
   ('Fernando Perez','fp@email.com'),
   ('Antonieta garcia','ag@email.com');