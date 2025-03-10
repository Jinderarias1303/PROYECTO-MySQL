use gestion_parque;
/* Estado actual de parques: cantidad por departamento y superficies declaradas*/

-- 1.Obtener la lista de todos los parques registrados.
select p.ID , p.NOMBRE as nombre_parque_registrados 
from parque p ;

-- 2.Mostrar los nombres y fechas de declaración de cada parque.
select p.NOMBRE, p.FECHA_DECLARACION
from parque p 

-- 3.Consultar qué departamentos están asociados con cada parque.

SELECT d.NOMBRE AS Departamento, p.NOMBRE AS Parque
FROM departamento_parque dp  
JOIN departamento d ON dp.ID_DEPARTAMENTO = d.ID  
JOIN parque p ON dp.ID_PARQUE = p.ID;


-- 4.Listar los parques que tienen más de un departamento asociado.

SELECT id_parque, COUNT(id_departamento) AS num_departamentos
FROM departamento_parque
GROUP BY id_parque
HAVING COUNT(id_departamento) > 1;


-- 5.Encontrar el parque con la mayor cantidad de áreas registradas.

SELECT id_parque, COUNT(id_departamento) AS num_departamentos
FROM departamento_parque
GROUP BY id_parque
ORDER BY num_departamentos DESC
LIMIT 1;

-- 6.Determinar la cantidad total de parques en la base de datos.
SELECT COUNT(DISTINCT id_parque) AS total_parques
FROM departamento_parque;

-- 7.Buscar parques declarados después de una fecha específica.
select p.NOMBRE , p.FECHA_DECLARACION
from parque p 
where year(p.FECHA_DECLARACION ) > 1995
order by p.FECHA_DECLARACION ;

-- 8.Mostrar los parques que no tienen visitantes registrados.

SELECT p.NOMBRE AS Parque
FROM parque p
LEFT JOIN visitante_parque vp ON p.ID = vp.ID_PARQUE
WHERE vp.ID_VISITANTE IS NULL;

-- 9.Identificar los parques que tienen proyectos de investigación en curso.

SELECT DISTINCT p.NOMBRE AS Parque
FROM parque p
JOIN parque_area pa ON p.ID = pa.ID_PARQUE
JOIN area a ON pa.ID_AREA = a.ID
JOIN area_especie ae ON a.ID = ae.ID_AREA
JOIN proyecto_investigacion pi ON ae.ID_ESPECIE = pi.ID_ESPECIE
JOIN proyecto pr ON pi.ID_PROYECTO = pr.ID
WHERE pr.FECHA_FIN IS NULL OR pr.FECHA_FIN > CURDATE();


-- 10.Ver qué parques tienen especies registradas en sus áreas.
SELECT p.NOMBRE AS Parque, e.NOMBRE_VULGAR AS Especie, a.NOMBRE AS Area
FROM area_especie ae
JOIN area a ON ae.ID_AREA = a.ID
JOIN parque_area pa ON pa.ID_AREA = a.ID  
JOIN parque p ON p.ID = pa.ID_PARQUE      
JOIN especie e ON ae.ID_ESPECIE = e.ID;

-- 11.Obtener el nombre y la extensión total de cada área.

select a.NOMBRE , a.EXTENCION_TOTAL
from area a ;

-- 12.Listar todas las áreas junto con los parques a los que pertenecen.

SELECT a.NOMBRE AS Area, p.NOMBRE AS Parque
FROM area a
JOIN parque_area pa ON a.ID = pa.ID_AREA
JOIN parque p ON pa.ID_PARQUE = p.ID;

-- 13.Consultar la cantidad total de especies en cada área.

SELECT a.NOMBRE AS Area, COUNT(ae.ID_ESPECIE) AS Total_Especies
FROM area a
LEFT JOIN area_especie ae ON a.ID = ae.ID_AREA
GROUP BY a.ID, a.NOMBRE;


-- 14.Identificar qué área tiene la mayor cantidad de especies registradas.

SELECT a.NOMBRE AS Area, COUNT(ae.ID_ESPECIE) AS Total_Especies
FROM area a
LEFT JOIN area_especie ae ON a.ID = ae.ID_AREA
GROUP BY a.ID, a.NOMBRE
ORDER BY Total_Especies DESC
LIMIT 1;
-- esto por que todos los parques tienen de una sola area 

-- 15.Mostrar las especies de un área específica.

SELECT e.NOMBRE_VULGAR AS Especie, e.TIPO
FROM area_especie ae
JOIN especie e ON ae.ID_ESPECIE = e.ID
WHERE ae.ID_AREA = 5; 

-- 16.Listar las especies de un tipo específico en todas las áreas.

SELECT e.NOMBRE_VULGAR AS Especie, e.TIPO, a.NOMBRE AS Area
FROM area_especie ae
JOIN especie e ON ae.ID_ESPECIE = e.ID
JOIN area a ON ae.ID_AREA = a.ID
WHERE e.TIPO = 2; 


-- 17.Obtener la cantidad total de especies en toda la base de datos.

SELECT COUNT(DISTINCT ID) AS Total_Especies
FROM especie;


-- 18.Buscar el área con la mayor extensión total.
SELECT a.NOMBRE AS Area, a.EXTENCION_TOTAL
FROM area a 
ORDER BY a.EXTENCION_TOTAL DESC
LIMIT 1;



-- 19.Consultar qué áreas no tienen especies registradas.

SELECT a.NOMBRE AS Area
FROM area a
LEFT JOIN area_especie ae ON a.ID = ae.ID_AREA
WHERE ae.ID_ESPECIE IS NULL;


-- 20.Mostrar la cantidad total de especies en un parque determinado.

SELECT p.NOMBRE AS Parque, COUNT(DISTINCT ae.ID_ESPECIE) AS Total_Especies
FROM parque p
JOIN parque_area pa ON p.ID = pa.ID_PARQUE
JOIN area a ON pa.ID_AREA = a.ID
JOIN area_especie ae ON a.ID = ae.ID_AREA
WHERE p.ID = 1
GROUP BY p.ID, p.NOMBRE;

-- 21.Obtener la lista de todos los visitantes registrados.
select *
from visitante v 


-- 22.Mostrar los visitantes que han ingresado a un parque en un rango de fechas.

SELECT v.NOMBRE, vp.FECHA_INGRESO, p.NOMBRE AS Parque
FROM visitante_parque vp
JOIN visitante v ON vp.ID_VISITANTE = v.ID
JOIN parque p ON vp.ID_PARQUE = p.ID
WHERE vp.FECHA_INGRESO BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY vp.FECHA_INGRESO ASC;

-- 23.Consultar qué visitante ha ingresado más veces a un parque específico.

SELECT v.NOMBRE, COUNT(*) AS Veces_Visitado
FROM visitante_parque vp
JOIN visitante v ON vp.ID_VISITANTE = v.ID
WHERE vp.ID_PARQUE = 1
GROUP BY v.ID, v.NOMBRE
ORDER BY Veces_Visitado DESC
LIMIT 1;

-- 24.Listar los visitantes con su profesión y dirección.

SELECT v.NOMBRE,v.PROFECION,v.DIRECCION
FROM visitante v;


-- 25.Encontrar qué visitante ha estado en más de un parque.

SELECT v.NOMBRE, COUNT(DISTINCT vp.ID_PARQUE) AS Parques_Visitados
FROM visitante_parque vp
JOIN visitante v ON vp.ID_VISITANTE = v.ID
GROUP BY v.ID, v.NOMBRE
HAVING COUNT(DISTINCT vp.ID_PARQUE) > 1;

/*  Esta consulta filtra visitantes que han visitado más de un parque.*/

-- 26.Identificar los visitantes que se han alojado en un parque.

SELECT DISTINCT v.NOMBRE, p.NOMBRE AS Parque
FROM visitante_alojamiento va
JOIN visitante v ON va.ID_VISITANTE = v.ID
JOIN alojamiento a ON va.ID_ALOJAMIENTO = a.ID
JOIN parque p ON a.ID_PARQUE_PERTENECE = p.ID;



-- 27.Contar el número total de visitantes que han ingresado a los parques.

SELECT COUNT(DISTINCT ID_VISITANTE) AS Total_Visitantes
FROM visitante_parque;


-- 28.Determinar qué visitantes han ingresado con el mismo empleado.

SELECT v.NOMBRE,  p.NOMBRE AS Empleado
FROM visitante_parque vp
JOIN visitante v ON vp.ID_VISITANTE = v.ID
JOIN  personal p  ON vp.ID_EMPLEADO = p.ID
ORDER BY p.NOMBRE;


-- 29.Buscar visitantes que nunca han salido de un parque (según fecha de salida).

SELECT v.NOMBRE,  vp.FECHA_INGRESO, p.NOMBRE AS Parque
FROM visitante_parque vp
JOIN visitante v ON vp.ID_VISITANTE = v.ID
JOIN parque p ON vp.ID_PARQUE = p.ID
WHERE vp.FECHA_SALIDA IS NULL;
-- todos los visitantes han salido 

-- 30.Consultar la cantidad total de visitantes en cada parque.

SELECT p.NOMBRE AS Parque, COUNT(DISTINCT vp.ID_VISITANTE) AS Total_Visitantes
FROM visitante_parque vp
JOIN parque p ON vp.ID_PARQUE = p.ID
GROUP BY p.ID, p.NOMBRE
ORDER BY Total_Visitantes DESC;

-- 31.Obtener los nombres y cédulas de todo el personal registrado.

select p.NOMBRE ,p.CEDULA
from personal p ;

-- 32.Mostrar la cantidad total de empleados en la base de datos.

select COUNT(distinct p.ID) as numero_empleados
from personal p ;

-- 33.Consultar qué empleados están asignados a cada área.

SELECT p.NOMBRE AS Empleado, a.NOMBRE AS Area
FROM area_personal ap 
JOIN personal p  ON ap.ID_PERSONAL  = P.ID
JOIN area a ON ap.ID_AREA = a.ID;


-- 34.Identificar el tipo de cada empleado (vigilante, investigador, etc.).

SELECT p.NOMBRE , p.TIPO
FROM personal p ;


-- 35.Buscar los empleados que tienen un sueldo mayor a cierto valor.

SELECT p.NOMBRE , p.SUELDO
FROM personal p 
WHERE SUELDO > 1500;


-- 36.Consultar qué empleados están a cargo de proyectos de investigación.

SELECT DISTINCT p2.NOMBRE , p.ID AS Proyecto
FROM proyecto_investigacion pi
JOIN personal p2  ON pi.ID_ENCARGADO = p2.ID
JOIN proyecto p ON pi.ID_PROYECTO = p.ID;


-- 37.Mostrar los empleados que trabajan en más de un área.

SELECT p.NOMBRE, COUNT(ap.ID_AREA) AS Numero_Areas
FROM area_personal ap  
JOIN personal p  ON ap.ID_PERSONAL = p.ID
GROUP BY p.ID, p.NOMBRE
HAVING COUNT(ap.ID_AREA) > 1;


-- 38.Listar los empleados con su información de contacto.

select p.NOMBRE,p.TELEFONO
from personal p;

-- 39.Identificar qué empleados están asignados a la vigilancia de vehículos.

SELECT p.NOMBRE
FROM personal p 
JOIN vehiculo_vigilancia vv  ON p.ID = vv.ID_ENCARGADO ;


-- 40.Consultar qué empleados han registrado la entrada de visitantes.

SELECT DISTINCT p.NOMBRE,p.ID
FROM visitante_parque vp
JOIN personal p  ON vp.ID_EMPLEADO = p.ID;


-- 41.Obtener la lista de todos los proyectos de investigación.

select * from proyecto p ;

-- 42.Mostrar los proyectos con su presupuesto asignado.

select p.ID as PROYECTO, p.PRESUPUESTO
from proyecto p ;

-- 43.Identificar qué proyectos están investigando una especie específica.

select p.ID as PROYECTO_ID, e.NOMBRE_VULGAR ,e.TIPO
from especie e 
join proyecto_investigacion pi2 on e.ID = pi2.ID_ESPECIE 
join proyecto p on p.ID = pi2.ID_PROYECTO
where E.NOMBRE_VULGAR = "Boa";
-- se busaca la especie boa 

-- 44.Consultar los proyectos que han finalizado en una fecha determinada.

SELECT p.ID AS Proyecto, FECHA_FIN
FROM proyecto p
WHERE FECHA_FIN = '2024-12-20';


-- 45.Encontrar los proyectos que aún están en curso.

SELECT p.ID AS Proyecto, FECHA_FIN
FROM proyecto p
WHERE FECHA_FIN IS NULL OR FECHA_FIN > CURRENT_DATE();

-- 46.Mostrar los encargados de cada proyecto de investigación.

select p.NOMBRE, pi2.ID_PROYECTO
from proyecto_investigacion pi2 
join personal p on pi2.ID_ENCARGADO = p.ID
join proyecto p2 on p2.ID = pi2.ID_PROYECTO;

-- 47.Consultar qué especies han sido investigadas en cada parque.

/*SELECT DISTINCT pa.NOMBRE AS Parque, e.NOMBRE_VULGAR AS Especie
FROM 
JOIN especie e ON pe.ID_ESPECIE = e.ID
JOIN proyecto p ON pe.ID_PROYECTO = p.ID
JOIN parque pa ON  = pa.ID;*/


-- 48.Buscar los proyectos con mayor presupuesto asignado.

SELECT ID AS Proyecto, PRESUPUESTO
FROM proyecto
ORDER BY PRESUPUESTO DESC
LIMIT 5;


-- 49.Determinar cuántos proyectos han investigado la misma especie.

SELECT e.NOMBRE_VULGAR AS Especie, COUNT(pi2.ID_PROYECTO) AS Cantidad_Proyectos
from especie e 
join proyecto_investigacion pi2 on pi2.ID_ESPECIE = e.ID
GROUP BY e.ID, e.NOMBRE_VULGAR
ORDER BY Cantidad_Proyectos DESC;


-- 50.Listar los proyectos ordenados por fecha de inicio.

SELECT p.ID  AS Proyecto, FECHA_INICIO
FROM proyecto p
ORDER BY FECHA_INICIO ASC;



