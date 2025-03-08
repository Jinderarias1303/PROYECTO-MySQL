drop database if exists	 gestion_parque;
create database gestion_parque;
use gestion_parque;

drop table if exists ENTIDAD_RESPONSABLE;
create table if not exists  ENTIDAD_RESPONSABLE(
ID int primary key AUTO_INCREMENT,
NOMBRE varchar(100) not NULL
);

drop table if exists DEPARTAMENTO;
create table if not exists DEPARTAMENTO(
ID int primary key AUTO_INCREMENT,
NOMBRE VARCHAR(100) not NULL
);

CREATE TABLE DEPARTAMENTO_ENTIDAD (
    ID_DEPARTAMENTO INT,
    ID_ENTIDAD_RESPONSABLE INT,
    PRIMARY KEY (ID_DEPARTAMENTO, ID_ENTIDAD_RESPONSABLE),
    FOREIGN KEY (ID_DEPARTAMENTO) REFERENCES DEPARTAMENTO(ID),
    FOREIGN KEY (ID_ENTIDAD_RESPONSABLE) REFERENCES ENTIDAD_RESPONSABLE(ID)
);



drop table if exists PARQUE;
create table PARQUE(
ID INT primary key AUTO_INCREMENT,
NOMBRE VARCHAR(100) not NULL,
FECHA_DECLARACION DATE not NULL
);

drop table if exists DEPARTAMENTO_PARQUE;
create table DEPARTAMENTO_PARQUE(
ID_DEPARTAMENTO INT,
ID_PARQUE INT,
primary key (ID_DEPARTAMENTO,ID_PARQUE),
foreign key (ID_DEPARTAMENTO) references DEPARTAMENTO(ID),
foreign key (ID_PARQUE) references PARQUE(ID)
);

drop table if exists AREA;
create table if not exists  AREA(
ID INT primary key AUTO_INCREMENT,
NOMBRE VARCHAR(100)not NULL,
EXTENCION DECIMAL(10,2)not NULL
);

ALTER TABLE AREA
CHANGE EXTENCION EXTENCION_TOTAL DECIMAL(10,2) NOT NULL;

drop table if exists PARQUE_AREA;
create table if not exists PARQUE_AREA(
ID_PARQUE INT,
ID_AREA INT,
primary key(ID_PARQUE,ID_AREA),
foreign KEY(ID_PARQUE) references PARQUE(ID),
foreign KEY(ID_AREA) references AREA(ID)
);

ALTER TABLE PARQUE_AREA
ADD EXTENCION DECIMAL(10,2) NOT NULL;


drop table if exists ESPECIE;
create table if not exists ESPECIE(
ID INT primary key AUTO_INCREMENT,
NOMBRE_CIENTIFICO VARCHAR(100) not NULL,
NOMBRE_VULGAR VARCHAR(100) not NULL,
TIPO ENUM('VEGETAL','ANIMAL','MINERAL') default 'ANIMAL' not NULL
);

drop table if exists AREA_ESPECIE;
create table if not exists AREA_ESPECIE(
ID_AREA INT,
ID_ESPECIE INT,
CANTIDAD INT not null,
primary key(ID_AREA,ID_ESPECIE),
foreign KEY(ID_AREA) references AREA(ID),
foreign key(ID_ESPECIE) references ESPECIE(ID)
);

drop table if exists PERSONAL;
create table if not exists PERSONAL(
ID INT primary key AUTO_INCREMENT,
CEDULA INT not null,
NOMBRE VARCHAR(100),
DIRECCION VARCHAR(150),
TELEFONO INT,
TIPO ENUM('001','002','003','004') not null,
SUELDO DECIMAL(10,2)
);
ALTER TABLE PERSONAL MODIFY TELEFONO BIGINT;


drop table if exists VEHICULO_VIGILANCIA;
create table if not exists VEHICULO_VIGILANCIA(
ID INT primary key auto_increment,
PLACA VARCHAR(25),
MARCA VARCHAR(50),
ID_ENCARGADO INT,
foreign key (ID_ENCARGADO) references PERSONAL(ID)
);


create table if not exists AREA_PERSONAL(
ID_PERSONAL INT,
ID_AREA INT ,
primary key (ID_PERSONAL,ID_AREA),
foreign key (ID_PERSONAL) references PERSONAL(ID),
foreign key (ID_AREA) references AREA(ID)
);

drop table if exists PROYECTO;
create table if not exists  PROYECTO(
ID INT primary key auto_increment,
PRESUPUESTO DECIMAL(10,2) not null ,
FECHA_INICIO DATE,
FECHA_FIN DATE
);

drop table if exists PROYECTO_INVESTIGACION;
create table if not exists PROYECTO_INVESTIGACION(
ID_ENCARGADO INT,
ID_PROYECTO INT,
ID_ESPECIE INT,
primary key (ID_ENCARGADO,ID_PROYECTO),
foreign key (ID_ENCARGADO) references PERSONAL(ID),
foreign key (ID_PROYECTO) references PROYECTO(ID),
foreign key (ID_ESPECIE) references ESPECIE(ID)
);

create table if not exists VISITANTE(
ID INT primary key auto_increment,
CEDULA INT not null ,
NOMBRE VARCHAR(100),
PROFECION VARCHAR(100),
DIRECCION VARCHAR(100)
);

drop table if exists VISITANTE_PARQUE;
create table VISITANTE_PARQUE (
    ID_VISITANTE INT,
    ID_PARQUE INT,
    ID_EMPLEADO INT,
    FECHA_INGRESO DATE NOT NULL,
    FECHA_SALIDA DATE NOT NULL,
    PRIMARY KEY (ID_VISITANTE, ID_PARQUE, FECHA_INGRESO),
    FOREIGN KEY (ID_VISITANTE) REFERENCES VISITANTE(ID),
    FOREIGN KEY (ID_PARQUE) REFERENCES PARQUE(ID),
    FOREIGN KEY (ID_EMPLEADO) REFERENCES PERSONAL(ID),
    CHECK (FECHA_SALIDA >= FECHA_INGRESO)
);

drop table if exists ALOJAMIENTO;
create table if not exists  ALOJAMIENTO(
ID INT primary key auto_increment,
ID_PARQUE_PERTENECE INT,
CAPACIDAD INT ,
CATEGORIA VARCHAR(100),
foreign key (ID_PARQUE_PERTENECE) references PARQUE(ID)
);

drop table if exists visitante_alojamiento ;
create table if not exists VISITANTE_ALOJAMIENTO(
ID_VISITANTE INT,
ID_ALOJAMIENTO INT,
primary key (ID_VISITANTE,ID_ALOJAMIENTO),
foreign key (ID_VISITANTE) references VISITANTE(ID),
foreign key (ID_ALOJAMIENTO) references ALOJAMIENTO(ID)
);
