use gestion_parque;
-- activar el programador de eventos.
SET GLOBAL event_scheduler = ON;
show events;

SET GLOBAL event_scheduler = ON;

-- 1. Generar un reporte semanal de visitantes y alojamientos

drop event if exists Reporte_Semanal_Visitantes;
DELIMITER //
CREATE EVENT Reporte_Semanal_Visitantes
ON SCHEDULE EVERY 7 DAY
DO BEGIN
    INSERT INTO reporte_visitantes (fecha_reporte, total_visitantes, total_alojamientos)
    SELECT NOW(), COUNT(*), (SELECT COUNT(*) FROM visitante_alojamiento)
    FROM visitante_parque WHERE FECHA_INGRESO >= DATE_SUB(NOW(), INTERVAL 7 DAY);
END;
//
DELIMITER ;

-- 2. Actualizar inventario de especies cada 24 horas

drop event if exists Actualizar_Inventario_Especies;
DELIMITER //
CREATE EVENT Actualizar_Inventario_Especies
ON SCHEDULE EVERY 1 DAY
DO BEGIN
    UPDATE area_especie SET CANTIDAD = CANTIDAD + (RAND() * 10) WHERE CANTIDAD < 100;
END;
//
DELIMITER ;

-- 3. Limpiar registros de visitantes inactivos cada mes

drop event if exists Limpiar_Visitantes_Inactivos;
DELIMITER //
CREATE EVENT Limpiar_Visitantes_Inactivos
ON SCHEDULE EVERY 1 MONTH
DO BEGIN
    DELETE FROM visitante WHERE ID NOT IN (SELECT ID_VISITANTE FROM visitante_parque);
END;
//
DELIMITER ;

-- 4. Cerrar proyectos finalizados cada día

drop event if exists Cerrar_Proyectos_Finalizados;
DELIMITER //
CREATE EVENT Cerrar_Proyectos_Finalizados
ON SCHEDULE EVERY 1 DAY
DO BEGIN
    UPDATE proyecto SET ESTADO = 'Finalizado' WHERE FECHA_FIN < NOW();
END;
//
DELIMITER ;

-- 5. Generar reporte mensual de presupuestos

drop event if exists Reporte_Mensual_Presupuesto;
DELIMITER //
CREATE EVENT Reporte_Mensual_Presupuesto
ON SCHEDULE EVERY 1 MONTH
DO BEGIN
    INSERT INTO reporte_presupuesto (fecha_reporte, total_presupuesto)
    SELECT NOW(), SUM(PRESUPUESTO) FROM proyecto;
END;
//
DELIMITER ;

-- 6. Recalcular costos operativos de parques cada semana

drop event if exists Recalcular_Costos_Operativos;
DELIMITER //
CREATE EVENT Recalcular_Costos_Operativos
ON SCHEDULE EVERY 7 DAY
DO BEGIN
    UPDATE parque SET COSTO_OPERATIVO = (SELECT SUM(PRESUPUESTO) FROM proyecto WHERE parque.ID = proyecto.ID_PARQUE);
END;
//
DELIMITER ;

-- 7. Actualizar salarios del personal según inflación anual

drop event if exists Actualizar_Salarios;
DELIMITER //
CREATE EVENT Actualizar_Salarios
ON SCHEDULE EVERY 1 YEAR
DO BEGIN
    UPDATE personal SET SUELDO = SUELDO * 1.05;
END;
//
DELIMITER ;

-- 8. Desactivar alojamientos sin uso en 6 meses

drop event if exists Desactivar_Alojamientos;
DELIMITER //
CREATE EVENT Desactivar_Alojamientos
ON SCHEDULE EVERY 6 MONTH
DO BEGIN
    UPDATE alojamiento SET ESTADO = 'Inactivo' WHERE ID NOT IN 
    (SELECT DISTINCT ID_ALOJAMIENTO FROM visitante_alojamiento WHERE FECHA_RESERVA >= DATE_SUB(NOW(), INTERVAL 6 MONTH));
END;
//
DELIMITER ;

-- 9. Control de mantenimiento de vehículos cada 3 meses

drop event if exists Revisar_Vehiculos;
DELIMITER //
CREATE EVENT Revisar_Vehiculos
ON SCHEDULE EVERY 3 MONTH
DO BEGIN
    UPDATE vehiculo_vigilancia SET ESTADO = 'Revisión' WHERE FECHA_ULTIMO_MANTENIMIENTO < DATE_SUB(NOW(), INTERVAL 3 MONTH);
END;
//
DELIMITER ;

-- 10. Generar informe de especies en peligro cada 3 meses

drop event if exists Reporte_Especies_Peligro;
DELIMITER //
CREATE EVENT Reporte_Especies_Peligro
ON SCHEDULE EVERY 3 MONTH
DO BEGIN
    INSERT INTO reporte_especies_peligro (fecha_reporte, especies_en_peligro)
    SELECT NOW(), COUNT(*) FROM especie WHERE ESTADO = 'En peligro';
END;
//
DELIMITER ;

-- 11. Eliminar logs antiguos cada 30 días

drop event if exists  Limpiar_Logs;
DELIMITER //
CREATE EVENT Limpiar_Logs
ON SCHEDULE EVERY 30 DAY
DO BEGIN
    DELETE FROM logs WHERE fecha < DATE_SUB(NOW(), INTERVAL 30 DAY);
END;
//
DELIMITER ;

-- 12. Generar reporte trimestral de ingresos por visitantes

drop event if exists Reporte_Ingresos_Visitantes;
DELIMITER //
CREATE EVENT Reporte_Ingresos_Visitantes
ON SCHEDULE EVERY 3 MONTH
DO BEGIN
    INSERT INTO reporte_ingresos (fecha_reporte, total_ingresos)
    SELECT NOW(), SUM(TARIFA) FROM visitante_parque;
END;
//
DELIMITER ;

-- 13. Asignar nueva supervisión a áreas cada 15 días

drop event if exists Asignar_Supervision;
DELIMITER //
CREATE EVENT Asignar_Supervision
ON SCHEDULE EVERY 15 DAY
DO BEGIN
    UPDATE area_personal SET ID_PERSONAL = (SELECT ID FROM personal ORDER BY RAND() LIMIT 1);
END;
//
DELIMITER ;

-- 14. Enviar recordatorios de renovación de permisos ambientales cada 6 meses

drop event if exists Recordatorio_Permisos;
DELIMITER //
CREATE EVENT Recordatorio_Permisos
ON SCHEDULE EVERY 6 MONTH
DO BEGIN
    INSERT INTO notificaciones (mensaje, fecha_envio)
    SELECT 'Renovación de permisos ambientales requerida', NOW();
END;
//
DELIMITER ;

-- 15. Actualizar estadísticas de parques cada 24 horas

drop event if exists Actualizar_Estadisticas_Parques;
DELIMITER //
CREATE EVENT Actualizar_Estadisticas_Parques
ON SCHEDULE EVERY 1 DAY
DO BEGIN
    UPDATE parque SET TOTAL_VISITANTES = (SELECT COUNT(*) FROM visitante_parque WHERE parque.ID = visitante_parque.ID_PARQUE);
END;
//
DELIMITER ;


