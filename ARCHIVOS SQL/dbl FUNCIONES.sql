-- Funciones 
use gestion_parque;

-- 1. Calcular la superficie total de parques por departamento
DROP FUNCTION IF EXISTS SuperficieTotalPorDepartamento;
DELIMITER //

CREATE FUNCTION SuperficieTotalPorDepartamento(p_id_departamento INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2) DEFAULT 0;
    
    SELECT COALESCE(SUM(pa.EXTENCION), 0) INTO total
    FROM parque_area pa 
    WHERE pa.ID_PARQUE = p_id_departamento;

    RETURN total;
END;
//
DELIMITER ;


-- 2. Obtener el inventario de especies por área y tipo



-- 3. Calcular costos operativos de proyectos
drop function CostoOperativoProyecto;
DELIMITER //
CREATE FUNCTION CostoOperativoProyecto(p_id_proyecto INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE costo_total DECIMAL(10,2);
    SELECT SUM(p.PRESUPUESTO) INTO costo_total FROM proyecto p WHERE p.ID = p_id_proyecto;
    RETURN COALESCE(costo_total, 0);
END;
//
DELIMITER ;

-- 4. Contar visitantes en un parque en una fecha determinada
drop function if exists ContarVisitantesPorFecha;
DELIMITER //
CREATE FUNCTION ContarVisitantesPorFecha(p_id_parque INT, p_fecha DATE) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM visitante_parque
    WHERE ID_PARQUE = p_id_parque AND FECHA_INGRESO = p_fecha;
    RETURN COALESCE(total, 0);
END;
//
DELIMITER ;

-- 5. Obtener el sueldo total del personal en un parque
drop function if exists SueldoTotalPorParque;
DELIMITER //
CREATE FUNCTION SueldoTotalPorParque(p_id_parque INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(p.SUELDO) INTO total
    FROM personal p
    JOIN area_personal ap ON p.ID = ap.ID_PERSONAL
    JOIN parque_area pa ON ap.ID_AREA = pa.ID_AREA
    WHERE pa.ID_PARQUE = p_id_parque;
    RETURN COALESCE(total, 0);
END;
//
DELIMITER ;

-- 6. Calcular la cantidad total de especies en un parque
drop function if exists TotalEspeciesPorParque;
DELIMITER //
CREATE FUNCTION TotalEspeciesPorParque(p_id_parque INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT SUM(ae.CANTIDAD) INTO total
    FROM area_especie ae
    JOIN parque_area pa ON ae.ID_AREA = pa.ID_AREA
    WHERE pa.ID_PARQUE = p_id_parque;
    RETURN COALESCE(total, 0);
END;
//
DELIMITER ;

-- 7. Obtener la cantidad de visitantes hospedados en un alojamiento específico
drop function if exists TotalVisitantesPorAlojamiento;
DELIMITER //
CREATE FUNCTION TotalVisitantesPorAlojamiento(p_id_alojamiento INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM visitante_alojamiento
    WHERE ID_ALOJAMIENTO = p_id_alojamiento;
    RETURN COALESCE(total, 0);
END;
//
DELIMITER ;

-- 8. Calcular la duración promedio de estadía de los visitantes en un parque
drop function if exists DuracionPromedioEstadia;
DELIMITER //
CREATE FUNCTION DuracionPromedioEstadia(p_id_parque INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE promedio DECIMAL(10,2);
    SELECT AVG(DATEDIFF(FECHA_SALIDA, FECHA_INGRESO)) INTO promedio
    FROM visitante_parque
    WHERE ID_PARQUE = p_id_parque;
    RETURN COALESCE(promedio, 0);
END;
//
DELIMITER ;

-- 9. Calcular la cantidad de vehículos asignados a un encargado
drop function if exists TotalVehiculosPorEncargado;
DELIMITER //
CREATE FUNCTION TotalVehiculosPorEncargado(p_id_encargado INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM vehiculo_vigilancia
    WHERE ID_ENCARGADO = p_id_encargado;
    RETURN COALESCE(total, 0);
END;
//
DELIMITER ;

-- 10. Calcular el número total de proyectos activos en un parque
drop function if exists TotalProyectosActivos;
DELIMITER //
CREATE FUNCTION TotalProyectosActivos(p_id_parque INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    
    SELECT COUNT(DISTINCT pi.ID_PROYECTO) INTO total
    FROM proyecto p
    JOIN proyecto_investigacion pi ON p.ID = pi.ID_PROYECTO
    JOIN area_especie ae ON pi.ID_ESPECIE = ae.ID_ESPECIE
    join parque_area pa  ON ae.ID_AREA = pa.ID_AREA
    WHERE pa.ID_PARQUE = p_id_parque AND p.FECHA_FIN IS NULL;
    
    RETURN COALESCE(total, 0);
END;
//
DELIMITER ;

-- llamado a las funciones 
-- 1. Calcular la superficie total de parques por departamento
SELECT SuperficieTotalPorDepartamento(2);

-- 3. Calcular costos operativos de proyectos
SELECT CostoOperativoProyecto(1);

-- 4. Contar visitantes en un parque en una fecha determinada
SELECT ContarVisitantesPorFecha(2, '2025-03-09');

-- 5. Obtener el sueldo total del personal en un parque
SELECT SueldoTotalPorParque(3);

-- 6. Calcular la cantidad total de especies en un parque
SELECT TotalEspeciesPorParque(4);

-- 7. Obtener la cantidad de visitantes hospedados en un alojamiento específico
SELECT TotalVisitantesPorAlojamiento(5);

-- 8. Calcular la duración promedio de estadía de los visitantes en un parque
SELECT DuracionPromedioEstadia(6);

-- 9. Calcular la cantidad de vehículos asignados a un encargado
SELECT TotalVehiculosPorEncargado(2);

-- 10. Calcular el número total de proyectos activos en un parque
SELECT TotalProyectosActivos(5);
