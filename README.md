# 🌳 Gestión parques naturales 🌳

### El propósito de este proyecto es dar mi idea de gestión de los parques naturales bajo la supervisión del Ministerio del Medio Ambiente.


##### EJECUTAR EN DBeaver 24.3.25

## Archivos en el repositorio

En la carpeta de **archivos SQL** se encuentran los siguientes archivos:

1. **Creación de la base de datos**
2. **Datos ingresados para hacer las pruebas**
3. **100 consultas segun los requerimientos**
4. **Procedimientos almacenados**
5. **Funciones**
6. **Eventos**
7. **USUARIOS**

Además, en otra carpeta se encuentra el **modelo ER** realizado en **StarUML**.

## orden de ejecucion 
1. dbl GESTION_PARQUE
2. dbl ingreso de datos
3. dbl consultas
4. dbl FUNCIONES
5. dbl PROCEDIMIENTOS_ALMACENADOS
6. dbl EVENTOS
7. dbl PERMISOS DE USUARIOS

### Roles de Usuario y Permisos en MySQL
1. Administrador
Descripción: Tiene acceso total a la base de datos y puede gestionar todos los aspectos del sistema.
Permisos:
- GRANT ALL PRIVILEGES ON gestion_parque.* TO 'admin'@'%';
```
DROP USER IF EXISTS 'admin'@'%';
FLUSH PRIVILEGES;
CREATE USER 'admin'@'%' IDENTIFIED BY 'Admin_123';
GRANT ALL PRIVILEGES ON gestion_parque.* TO 'admin'@'%';
FLUSH PRIVILEGES;
```
2. Gestor de Parques
Descripción: Responsable de la gestión de parques, áreas y especies.
Permisos: Puede SELECT, INSERT, UPDATE, DELETE en las tablas parque, area y especie.
```
DROP USER IF EXISTS 'gestor_parques'@'%';
FLUSH PRIVILEGES;
CREATE USER 'gestor_parques'@'%' IDENTIFIED BY 'Gestor_123';
GRANT SELECT, INSERT, UPDATE, DELETE ON gestion_parque.parque TO 'gestor_parques'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON gestion_parque.area TO 'gestor_parques'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON gestion_parque.especie TO 'gestor_parques'@'%';
FLUSH PRIVILEGES;
```
3. Investigador
Descripción: Accede a información de proyectos y especies para investigación.
Permisos: Puede SELECT en las tablas proyecto y especie.
```
DROP USER IF EXISTS 'investigador'@'%';
FLUSH PRIVILEGES;
CREATE USER 'investigador'@'%' IDENTIFIED BY 'Investigador_123';
GRANT SELECT ON gestion_parque.proyecto TO 'investigador'@'%';
GRANT SELECT ON gestion_parque.especie TO 'investigador'@'%';
FLUSH PRIVILEGES;
```
4. Auditor
Descripción: Tiene acceso a reportes financieros y datos del personal para auditoría.
Permisos: Puede SELECT en las tablas proyecto y personal.
```
drop user if exists 'auditor'@'123';
flush privileges;

create user 'auditor'@'123' identified by 'auditor_123';
grant select on gestion_parque.proyecto to 'auditor'@'123';
grant select on gestion_parque.personal to 'auditor'@'123';
flush privileges;
```
5. Encargado de Visitantes
Descripción: Administra el registro de visitantes y alojamientos.
Permisos: Puede SELECT, INSERT, UPDATE, DELETE en las tablas visitante y alojamiento.
```
DROP USER IF EXISTS 'encargado_visitantes'@'%';
FLUSH PRIVILEGES;
CREATE USER 'encargado_visitantes'@'%' IDENTIFIED BY 'Encargado123';
GRANT SELECT, INSERT, UPDATE, DELETE ON gestion_parque.visitante TO 'encargado_visitantes'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON gestion_parque.alojamiento TO 'encargado_visitantes'@'%';
FLUSH PRIVILEGES;
```
Ver Usuarios en MySQL
```SELECT user, host FROM mysql.user;```
Eliminar un Usuario en MySQL
```
DROP USER 'nombre_usuario'@'%';
FLUSH PRIVILEGES;
```
