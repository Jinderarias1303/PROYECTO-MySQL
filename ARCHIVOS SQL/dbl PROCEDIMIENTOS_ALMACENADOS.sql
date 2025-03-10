use gestion_parque;
show procedure status;
-- Procedimientos almacenados

-- 1. Registrar un nuevo parque
drop procedure if exists RegistrarParque;
DELIMITER //
CREATE PROCEDURE RegistrarParque(IN p_nombre VARCHAR(255), IN p_fecha_declaracion DATE)
BEGIN
    INSERT INTO parque (NOMBRE, FECHA_DECLARACION) VALUES (p_nombre, p_fecha_declaracion);
END;
//
DELIMITER ;

-- 2. Actualizar datos de un parque
DELIMITER //
CREATE PROCEDURE ActualizarParque(IN p_id INT, IN p_nombre VARCHAR(255), IN p_fecha_declaracion DATE)
BEGIN
    UPDATE parque SET NOMBRE = p_nombre, FECHA_DECLARACION = p_fecha_declaracion WHERE ID = p_id;
END;
//
DELIMITER ;

-- 3. Eliminar un parque
DELIMITER //
CREATE PROCEDURE EliminarParque(IN p_id INT)
BEGIN
    DELETE FROM parque WHERE ID = p_id;
END;
//
DELIMITER ;
call EliminarParque(49);

-- 4. Registrar un área
drop procedure if exists RegistrarArea;
DELIMITER //
CREATE PROCEDURE RegistrarArea(IN p_nombre VARCHAR(255), IN p_extension_total DECIMAL(10,2))
BEGIN
    INSERT INTO area (NOMBRE,EXTENCION_TOTAL) VALUES (p_nombre, p_extension_total);
END;
//
DELIMITER ;
CALL RegistrarArea('Conservación Andina', 12500.50);

-- 5. Actualizar un área
drop procedure if exists ActualizarArea;
DELIMITER //
CREATE PROCEDURE ActualizarArea(IN p_id INT, IN p_nombre VARCHAR(255), IN p_extension_total DECIMAL(10,2))
BEGIN
    UPDATE area SET NOMBRE = p_nombre,EXTENCION_TOTAL = p_extension_total WHERE ID = p_id;
END;
//
DELIMITER ;
call ActualizarArea(15,'Conservación de viciosos', 12500.50);

-- 6. Eliminar un área
DELIMITER //
CREATE PROCEDURE EliminarArea(IN p_id INT)
BEGIN
    DELETE FROM area WHERE ID = p_id;
END;
//
DELIMITER ;
call EliminarArea(50);
-- 7. Registrar una especie
drop procedure if exists RegistrarEspecie;
DELIMITER //
CREATE PROCEDURE RegistrarEspecie(IN p_nombre_cientifico VARCHAR(255), IN p_nombre_vulgar VARCHAR(255), IN p_tipo VARCHAR(255))
BEGIN
    INSERT INTO especie (NOMBRE_CIENTIFICO, NOMBRE_VULGAR, TIPO) VALUES (p_nombre_cientifico, p_nombre_vulgar, p_tipo);
END;
//
DELIMITER ;

call RegistrarEspecie('siseñor','vulgar','vegetal');
-- 8. Actualizar una especie
drop procedure if exists ActualizarEspecie;
DELIMITER //
CREATE PROCEDURE ActualizarEspecie(IN p_id INT, IN p_nombre_cientifico VARCHAR(255), IN p_nombre_vulgar VARCHAR(255), IN p_tipo VARCHAR(255))
BEGIN
    UPDATE especie SET NOMBRE_CIENTIFICO = p_nombre_cientifico, NOMBRE_VULGAR = p_nombre_vulgar, TIPO = p_tipo WHERE ID = p_id;
END;
//
DELIMITER ;
call ActualizarEspecie(51,'Homo sapiens','lucia','animal');

-- 9. Eliminar una especie
DELIMITER //
CREATE PROCEDURE EliminarEspecie(IN p_id INT)
BEGIN
    DELETE FROM especie WHERE ID = p_id;
END;
//
DELIMITER ;
call EliminarEspecie(50);
-- 10. Registrar un visitante
drop procedure if exists RegistrarVisitante;
DELIMITER //
CREATE PROCEDURE RegistrarVisitante(IN p_cedula VARCHAR(20), IN p_nombre VARCHAR(255), IN p_profesion VARCHAR(255), IN p_direccion TEXT)
BEGIN
    INSERT INTO visitante (CEDULA, NOMBRE,PROFECION, DIRECCION) VALUES (p_cedula, p_nombre, p_profesion, p_direccion);
END;
//
DELIMITER ;
CALL RegistrarVisitante('1000052', 'Jinder', 'Pinponista', 'Cr 3 #60-80');

-- 11. Registrar un visitante en un parque
drop procedure if exists RegistrarVisitanteParque;
DELIMITER //
CREATE PROCEDURE RegistrarVisitanteParque(IN p_id_visitante INT, IN p_id_parque INT, IN p_id_empleado INT,IN p_fecha_ingreso DATE , IN p_fecha_salida DATE)
BEGIN
    INSERT INTO visitante_parque (ID_VISITANTE, ID_PARQUE,ID_EMPLEADO,FECHA_INGRESO,FECHA_SALIDA) VALUES (p_id_visitante, p_id_parque,p_id_empleado, p_fecha_ingreso, p_fecha_salida);
END;
//
DELIMITER ;
call RegistrarVisitanteParque(51,1,41,'2025-04-20','2025-04-25');
-- 12. Registrar un visitante en un alojamiento
drop procedure if exists AsignarVisitanteAlojamiento;
DELIMITER //
CREATE PROCEDURE AsignarVisitanteAlojamiento(IN p_id_visitante INT, IN p_id_alojamiento INT)
BEGIN
    INSERT INTO visitante_alojamiento (ID_VISITANTE, ID_ALOJAMIENTO) VALUES (p_id_visitante, p_id_alojamiento);
END;
//
DELIMITER ;
call AsignarVisitanteAlojamiento(51,48);

-- 13. Asignar personal a un área
drop procedure if exists AsignarPersonalArea;
DELIMITER //
CREATE PROCEDURE AsignarPersonalArea(IN p_id_personal INT, IN p_id_area INT)
BEGIN
    INSERT INTO area_personal (ID_PERSONAL, ID_AREA) VALUES (p_id_personal, p_id_area);
END;
//
DELIMITER ;
call AsignarPersonalArea(48,51);
-- 14. Registrar un proyecto de investigación

drop procedure if exists RegistrarProyecto;
DELIMITER //
CREATE PROCEDURE RegistrarProyecto(IN p_presupuesto DECIMAL(10,2), IN p_fecha_inicio DATE, IN p_fecha_fin DATE)
BEGIN
    INSERT INTO proyecto (PRESUPUESTO, FECHA_INICIO, FECHA_FIN) VALUES (p_presupuesto, p_fecha_inicio, p_fecha_fin);
END;
//
DELIMITER ;
call RegistrarProyecto(150000,'2024-03-09','2025-03-09');
-- 15. Asignar investigador a un proyecto
drop procedure if exists AsignarInvestigadorProyecto;
DELIMITER //
CREATE PROCEDURE AsignarInvestigadorProyecto(IN p_id_encargado INT, IN p_id_proyecto INT, IN p_id_especie INT)
BEGIN
    INSERT INTO proyecto_investigacion (ID_ENCARGADO, ID_PROYECTO, ID_ESPECIE) VALUES (p_id_encargado, p_id_proyecto, p_id_especie);
END;
//
DELIMITER ;

call AsignarInvestigadorProyecto(40,51,51);

