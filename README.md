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
Creación del usuario Administrador:
```
DROP USER IF EXISTS 'admin'@'%';
FLUSH PRIVILEGES;
CREATE USER 'admin'@'%' IDENTIFIED BY 'Admin_123';
GRANT ALL PRIVILEGES ON gestion_parque.* TO 'admin'@'%';
FLUSH PRIVILEGES;
