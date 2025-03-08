use gestion_parque;
-- ingreso de las entidades responsables 
INSERT INTO ENTIDAD_RESPONSABLE (NOMBRE) VALUES
('Ministerio del Medio Ambiente'),
('Agencia Nacional de Parques'),
('Fundación para la Conservación'),
('Secretaría de Recursos Naturales'),
('Instituto de Ecología y Medio Ambiente'),
('Dirección General de Parques Naturales'),
('Consejo Nacional de Áreas Protegidas'),
('Organización para la Protección de la Fauna'),
('Departamento de Gestión Ambiental'),
('Comisión de Sostenibilidad y Biodiversidad'),
('Corporación de Desarrollo Forestal'),
('Unidad de Conservación de Ecosistemas'),
('Centro de Estudios de la Naturaleza'),
('Fundación para la Protección del Hábitat'),
('Instituto de Estudios de la Vida Silvestre'),
('Asociación para la Restauración Ecológica'),
('Gobierno Regional de Medio Ambiente'),
('Programa de Reservas Naturales'),
('Autoridad de Parques y Áreas Protegidas'),
('Coordinación de Recursos Naturales'),
('Comité para la Gestión Forestal'),
('Consejo de Protección de la Biodiversidad'),
('Instituto Nacional de Parques y Reservas'),
('Red de Áreas Protegidas'),
('Organización para la Defensa de la Naturaleza'),
('Programa de Manejo de Ecosistemas'),
('Unidad de Investigación en Ecología'),
('Centro para la Gestión de Reservas Naturales'),
('Fondo para la Conservación Ambiental'),
('Consejo de Parques Nacionales'),
('Agencia de Protección del Patrimonio Natural'),
('Secretaría de Áreas Silvestres Protegidas');

-- ingreso realista de los departamentos de Colombia 
INSERT INTO DEPARTAMENTO (NOMBRE) VALUES
('Amazonas'),
('Antioquia'),
('Arauca'),
('Atlántico'),
('Bolívar'),
('Boyacá'),
('Caldas'),
('Caquetá'),
('Casanare'),
('Cauca'),
('Cesar'),
('Chocó'),
('Córdoba'),
('Cundinamarca'),
('Guainía'),
('Guaviare'),
('Huila'),
('La Guajira'),
('Magdalena'),
('Meta'),
('Nariño'),
('Norte de Santander'),
('Putumayo'),
('Quindío'),
('Risaralda'),
('San Andrés y Providencia'),
('Santander'),
('Sucre'),
('Tolima'),
('Valle del Cauca'),
('Vaupés'),
('Vichada');

-- departamentos que estan a cargo de una o mas entidades
INSERT INTO DEPARTAMENTO_ENTIDAD (ID_DEPARTAMENTO, ID_ENTIDAD_RESPONSABLE) VALUES
(1, 1), (1, 2), 
(2, 3), (2, 4),
(3, 5), (3, 6), (3, 7),
(4, 8), (4, 9),
(5, 10), (5, 11), (5, 12),
(6, 13), (6, 14),
(7, 15), (7, 16),
(8, 17), (8, 18),
(9, 19), 
(10, 20), (10, 21), 
(11, 22), (11, 23),
(12, 24), (12, 25), (12, 26),
(13, 27), (13, 28),
(14, 29), (14, 30), (14, 31),
(15, 32), (15, 1),
(16, 2), 
(17, 3), (17, 4),
(18, 5), (18, 6), (18, 7),
(19, 8), (19, 9), 
(20, 10), (20, 11),
(21, 12), (21, 13),
(22, 14), (22, 15), 
(23, 16), (23, 17),
(24, 18), (24, 19),
(25, 20), (25, 21);

-- parques 
INSERT INTO PARQUE (NOMBRE, FECHA_DECLARACION) VALUES
('Parque Nacional Natural Amacayacu', '1975-08-22'),
('Parque Nacional Natural El Cocuy', '1977-06-01'),
('Parque Nacional Natural Los Nevados', '1973-04-30'),
('Parque Nacional Natural Tayrona', '1964-04-24'),
('Parque Nacional Natural Sierra Nevada de Santa Marta', '1964-07-05'),
('Parque Nacional Natural Macarena', '1948-09-01'),
('Parque Nacional Natural Sumapaz', '1977-02-06'),
('Parque Nacional Natural Farallones de Cali', '1968-01-20'),
('Parque Nacional Natural Los Katíos', '1974-06-06'),
('Parque Nacional Natural Chingaza', '1977-05-06'),
('Parque Nacional Natural Cueva de los Guácharos', '1960-11-22'),
('Parque Nacional Natural Sanquianga', '1977-09-01'),
('Parque Nacional Natural Puracé', '1961-04-08'),
('Parque Nacional Natural Paramillo', '1977-05-01'),
('Parque Nacional Natural Tinigua', '1989-06-22'),
('Parque Nacional Natural Utría', '1987-01-20'),
('Parque Nacional Natural Serranía de Chiribiquete', '1989-09-21'),
('Parque Nacional Natural Pisba', '1977-07-04'),
('Parque Nacional Natural Serranía de los Churumbelos', '2007-01-01'),
('Parque Nacional Natural Tatamá', '1987-10-19'),
('Parque Nacional Natural Yariguíes', '2005-12-06'),
('Parque Nacional Natural Old Providence McBean Lagoon', '1995-06-20'),
('Parque Nacional Natural Bahía Portete', '2000-12-21'),
('Parque Nacional Natural Corales del Rosario y San Bernardo', '1977-08-24'),
('Parque Nacional Natural Los Estoraques', '1998-11-20'),
('Parque Nacional Natural Nukak', '1993-05-21'),
('Parque Nacional Natural Serranía de San Lucas', '2016-09-14'),
('Parque Nacional Natural La Paya', '1984-03-14'),
('Parque Nacional Natural Chorro El Indio', '2003-07-22'),
('Parque Nacional Natural Miraflores', '2002-05-19'),
('Parque Nacional Natural Caño Cristales', '2009-08-09'),
('Parque Nacional Natural Selva de Florencia', '2005-01-12'),
('Parque Nacional Natural Serranía de Manacacías', '2018-03-15'),
('Parque Nacional Natural Isla Gorgona', '1984-06-18'),
('Parque Nacional Natural Isla Malpelo', '1995-06-22'),
('Parque Nacional Natural Los Colorados', '1998-04-30'),
('Parque Nacional Natural Playa Blanca', '2010-02-01'),
('Parque Nacional Natural Cuchilla del San Juan', '2014-07-18'),
('Parque Nacional Natural Río Bita', '2019-11-11'),
('Parque Nacional Natural San José del Guaviare', '2021-05-23'),
('Parque Nacional Natural Bosques de Cumaribo', '2022-06-30'),
('Parque Nacional Natural Inírida', '2023-03-15'),
('Parque Nacional Natural Alto Fragua Indi Wasi', '2002-08-25'),
('Parque Nacional Natural Perijá', '2023-09-12'),
('Parque Nacional Natural Guaviare Profundo', '2024-01-10'),
('Parque Nacional Natural Río Putumayo', '2021-10-14'),
('Parque Nacional Natural Cuenca Alta del Inírida', '2020-12-09'),
('Parque Nacional Natural Río Guainía', '2018-04-22');

-- areas
INSERT INTO AREA (NOMBRE, EXTENCION_TOTAL) VALUES
('Área de Conservación Andina', 12500.50),
('Reserva Ecológica del Amazonas', 45000.75),
('Santuario de Fauna Los Llanos', 9850.30),
('Bosque Seco Tropical de la Guajira', 7250.90),
('Zona Húmeda del Magdalena Medio', 16000.45),
('Selva Alta del Chocó', 32500.20),
('Ecosistema del Páramo de Sumapaz', 42000.10),
('Ciénaga Grande de Santa Marta', 31500.85),
('Pastizales de Orinoquía', 18000.65),
('Manglares de la Costa Pacífica', 25750.40),
('Reserva de Flora y Fauna Macarena', 40500.25),
('Corredor Biológico del Darién', 39000.60),
('Ecosistema Serranía de Chiribiquete', 48800.75),
('Selva Húmeda de Putumayo', 27800.35),
('Bosques Montañosos del Quindío', 15750.80),
('Sabana de la Alta Guajira', 9100.55),
('Páramo de Chingaza', 21600.95),
('Cerro Azul - Guaviare', 33850.20),
('Reserva del Río Bita', 45250.60),
('Humedales del Valle del Cauca', 10250.45),
('Bosque Andino del Tolima', 18950.35),
('Reserva de Manglares del Chocó', 22500.90),
('Ecosistema del Río Guainía', 37950.70),
('Montañas de la Serranía del Perijá', 28200.50),
('Cañón del Chicamocha', 14500.20),
('Bosques Secos del Magdalena', 21700.10),
('Páramo de Santurbán', 30850.75),
('Valle Interandino del Cauca', 24850.95),
('Reserva Selva Florencia', 33350.30),
('Ecosistema del Río Putumayo', 49950.80),
('Llanuras del Vaupés', 28800.65),
('Altiplano de los Andes Orientales', 37900.40),
('Pantanos del Amazonas', 31450.90),
('Ecosistema de Cuchilla del San Juan', 27000.85),
('Selva Alta del Guaviare', 39550.75),
('Reserva Natural Caño Cristales', 14850.20),
('Sabana del Orinoco', 25700.60),
('Ciénaga del Catatumbo', 31750.95),
('Bosques de niebla del Huila', 16750.80),
('Manglares de Sanquianga', 23950.40),
('Zona Protegida del Atrato Medio', 41500.20),
('Parque Marino Isla Gorgona', 13250.30),
('Reserva del Río Guaviare', 46500.70),
('Selva Nublada de Nariño', 28350.85),
('Cañón del río Dagua', 21800.55),
('Bosque Húmedo del Vichada', 36750.25),
('Montañas del Macizo Colombiano', 27850.65),
('Corredor Verde del Guaviare', 40250.90),
('Humedales del Bajo Atrato', 19750.35);

-- parque_area 
INSERT INTO PARQUE_AREA (ID_PARQUE, ID_AREA, EXTENCION) VALUES
(1, 1, 12500.50),
(2, 2, 45000.75),
(3, 3, 9850.30),
(4, 4, 7250.90),
(5, 5, 16000.45),
(6, 6, 32500.20),
(7, 7, 42000.10),
(8, 8, 31500.85),
(9, 9, 18000.65),
(10, 10, 25750.40),
(1, 11, 40500.25),
(2, 12, 39000.60),
(3, 13, 48800.75),
(4, 14, 27800.35),
(5, 15, 15750.80),
(6, 16, 9100.55),
(7, 17, 21600.95),
(8, 18, 33850.20),
(9, 19, 45250.60),
(10, 20, 10250.45),
(1, 21, 18950.35),
(2, 22, 22500.90),
(3, 23, 37950.70),
(4, 24, 28200.50),
(5, 25, 14500.20),
(6, 26, 21700.10),
(7, 27, 30850.75),
(8, 28, 24850.95),
(9, 29, 33350.30),
(10, 30, 49950.80),
(1, 31, 28800.65),
(2, 32, 37900.40),
(3, 33, 31450.90),
(4, 34, 27000.85),
(5, 35, 39550.75),
(6, 36, 14850.20),
(7, 37, 25700.60),
(8, 38, 31750.95),
(9, 39, 16750.80),
(10, 40, 23950.40),
(1, 41, 41500.20),
(2, 42, 13250.30),
(3, 43, 46500.70),
(4, 44, 28350.85),
(5, 45, 21800.55),
(6, 46, 36750.25),
(7, 47, 27850.65),
(8, 48, 40250.90),
(9, 49, 19750.35);

-- personal 
INSERT INTO PERSONAL (CEDULA, NOMBRE, DIRECCION, TELEFONO, TIPO, SUELDO) VALUES
(1012345678, 'Juan Pérez', 'Calle 1 #23-45', 3123456789, '001', 1200.50),
(1012345679, 'Ana García', 'Calle 2 #56-78', 3123456790, '002', 1500.75),
(1012345680, 'Carlos López', 'Calle 3 #89-12', 3123456791, '003', 1700.20),
(1012345681, 'Lucía Martínez', 'Calle 4 #34-56', 3123456792, '004', 1600.45),
(1012345682, 'Pedro Sánchez', 'Calle 5 #67-89', 3123456793, '001', 1450.30),
(1012345683, 'Laura Rodríguez', 'Calle 6 #90-12', 3123456794, '002', 1550.60),
(1012345684, 'José González', 'Calle 7 #23-45', 3123456795, '003', 1650.85),
(1012345685, 'María Fernández', 'Calle 8 #56-78', 3123456796, '004', 1750.50),
(1012345686, 'Juan Ramírez', 'Calle 9 #89-12', 3123456797, '001', 1300.40),
(1012345687, 'Elena Díaz', 'Calle 10 #34-56', 3123456798, '002', 1450.20),
(1012345688, 'Felipe Pérez', 'Calle 11 #67-89', 3123456799, '003', 1600.75),
(1012345689, 'Isabel Sánchez', 'Calle 12 #90-12', 3123456800, '004', 1700.30),
(1012345690, 'Ricardo Martínez', 'Calle 13 #23-45', 3123456801, '001', 1250.50),
(1012345691, 'Beatriz López', 'Calle 14 #56-78', 3123456802, '002', 1350.80),
(1012345692, 'Juanita Rodríguez', 'Calle 15 #89-12', 3123456803, '003', 1550.95),
(1012345693, 'Antonio González', 'Calle 16 #34-56', 3123456804, '004', 1450.60),
(1012345694, 'Carlos Ramírez', 'Calle 17 #67-89', 3123456805, '001', 1600.40),
(1012345695, 'Paula Fernández', 'Calle 18 #90-12', 3123456806, '002', 1500.20),
(1012345696, 'Luis Martínez', 'Calle 19 #23-45', 3123456807, '003', 1650.30),
(1012345697, 'Natalia Sánchez', 'Calle 20 #56-78', 3123456808, '004', 1750.10),
(1012345698, 'Víctor Pérez', 'Calle 21 #89-12', 3123456809, '001', 1400.45),
(1012345699, 'Esteban Rodríguez', 'Calle 22 #34-56', 3123456810, '002', 1550.50),
(1012345700, 'Martina González', 'Calle 23 #67-89', 3123456811, '003', 1500.75),
(1012345701, 'Alberto Ramírez', 'Calle 24 #90-12', 3123456812, '004', 1600.60),
(1012345702, 'Diana López', 'Calle 25 #23-45', 3123456813, '001', 1250.80),
(1012345703, 'Santiago Sánchez', 'Calle 26 #56-78', 3123456814, '002', 1450.30),
(1012345704, 'Luz Rodríguez', 'Calle 27 #89-12', 3123456815, '003', 1550.40),
(1012345705, 'Miguel González', 'Calle 28 #34-56', 3123456816, '004', 1650.10),
(1012345706, 'Cecilia Ramírez', 'Calle 29 #67-89', 3123456817, '001', 1700.50),
(1012345707, 'Iván Pérez', 'Calle 30 #90-12', 3123456818, '002', 1800.75),
(1012345708, 'Ana María Sánchez', 'Calle 31 #23-45', 3123456819, '003', 1600.20),
(1012345709, 'Gabriel Rodríguez', 'Calle 32 #56-78', 3123456820, '004', 1700.40),
(1012345710, 'Carolina González', 'Calle 33 #89-12', 3123456821, '001', 1250.90),
(1012345711, 'Adrián Ramírez', 'Calle 34 #34-56', 3123456822, '002', 1350.50),
(1012345712, 'Marta Pérez', 'Calle 35 #67-89', 3123456823, '003', 1450.75),
(1012345713, 'Ricardo Sánchez', 'Calle 36 #90-12', 3123456824, '004', 1550.90),
(1012345714, 'Julia Rodríguez', 'Calle 37 #23-45', 3123456825, '001', 1600.40),
(1012345715, 'Felipe González', 'Calle 38 #56-78', 3123456826, '002', 1750.20),
(1012345716, 'José Ramírez', 'Calle 39 #89-12', 3123456827, '003', 1850.30),
(1012345717, 'Carla Pérez', 'Calle 40 #34-56', 3123456828, '004', 1950.40),
(1012345718, 'Mario Sánchez', 'Calle 41 #67-89', 3123456829, '001', 1300.20),
(1012345719, 'Rocío Rodríguez', 'Calle 42 #90-12', 3123456830, '002', 1400.50),
(1012345720, 'Elena González', 'Calle 43 #23-45', 3123456831, '003', 1500.30),
(1012345721, 'Luis Ramírez', 'Calle 44 #56-78', 3123456832, '004', 1600.20),
(1012345722, 'Roberto Pérez', 'Calle 45 #89-12', 3123456833, '001', 1450.40),
(1012345723, 'Olga Sánchez', 'Calle 46 #34-56', 3123456834, '002', 1550.75),
(1012345724, 'Pedro Rodríguez', 'Calle 47 #67-89', 3123456835, '003', 1650.60),
(1012345725, 'Martín González', 'Calle 48 #90-12', 3123456836, '004', 1750.90),
(1012345726, 'Valentina Ramírez', 'Calle 49 #23-45', 3123456837, '001', 1850.30),
(1012345727, 'David Pérez', 'Calle 50 #56-78', 3123456838, '002', 1950.40);


-- VISITANTES 
INSERT INTO VISITANTE (CEDULA, NOMBRE, PROFECION, DIRECCION) VALUES
(1000001, 'Carlos Pérez', 'Ingeniero', 'Calle 10 #45-23, Bogotá'),
(1000002, 'María Gómez', 'Doctora', 'Carrera 5 #32-10, Medellín'),
(1000003, 'Juan Rodríguez', 'Profesor', 'Avenida 15 #20-50, Cali'),
(1000004, 'Ana Martínez', 'Bióloga', 'Calle 50 #12-34, Barranquilla'),
(1000005, 'Luis Sánchez', 'Veterinario', 'Carrera 8 #24-16, Cartagena'),
(1000006, 'Paula Torres', 'Estudiante', 'Avenida 30 #15-45, Bucaramanga'),
(1000007, 'Andrés Ramírez', 'Abogado', 'Calle 22 #9-88, Santa Marta'),
(1000008, 'Diana Castillo', 'Enfermera', 'Carrera 12 #14-78, Pereira'),
(1000009, 'Fernando Vargas', 'Contador', 'Avenida 40 #33-22, Manizales'),
(1000010, 'Laura Medina', 'Empresaria', 'Calle 8 #6-90, Cúcuta'),
(1000011, 'Pedro Herrera', 'Chef', 'Carrera 9 #18-66, Ibagué'),
(1000012, 'Lucía Ríos', 'Diseñadora', 'Calle 12 #22-77, Neiva'),
(1000013, 'Oscar Jiménez', 'Arquitecto', 'Avenida 50 #10-33, Pasto'),
(1000014, 'Jorge Ruiz', 'Médico', 'Carrera 7 #45-12, Montería'),
(1000015, 'Valentina Mora', 'Antropóloga', 'Calle 17 #11-45, Popayán'),
(1000016, 'Santiago López', 'Ingeniero Ambiental', 'Carrera 3 #21-11, Tunja'),
(1000017, 'Natalia Peña', 'Psicóloga', 'Avenida 14 #7-29, Villavicencio'),
(1000018, 'Felipe Castro', 'Zootecnista', 'Calle 19 #5-55, Quibdó'),
(1000019, 'Camila Fajardo', 'Periodista', 'Carrera 11 #30-80, Yopal'),
(1000020, 'Manuel Ortega', 'Economista', 'Avenida 20 #14-90, Armenia'),
(1000021, 'Eliana Gil', 'Fotógrafa', 'Calle 21 #19-77, Florencia'),
(1000022, 'Ricardo Pardo', 'Turista', 'Carrera 6 #40-30, Sincelejo'),
(1000023, 'Patricia Velásquez', 'Botánica', 'Avenida 35 #11-22, Riohacha'),
(1000024, 'Roberto Bustos', 'Geólogo', 'Calle 50 #22-55, Valledupar'),
(1000025, 'Daniela Navarro', 'Antropóloga', 'Carrera 15 #9-44, Leticia'),
(1000026, 'Sebastián Ramírez', 'Agrónomo', 'Avenida 17 #12-98, Mitú'),
(1000027, 'Lorena Espinosa', 'Bióloga', 'Calle 7 #30-11, Puerto Carreño'),
(1000028, 'Hernando Londoño', 'Sociólogo', 'Carrera 4 #5-22, Inírida'),
(1000029, 'Marcela Suárez', 'Ecóloga', 'Avenida 9 #6-33, San Andrés'),
(1000030, 'Gabriel Gutiérrez', 'Ingeniero Civil', 'Calle 32 #25-19, Providencia'),
(1000031, 'Sara Fernández', 'Abogada', 'Carrera 2 #44-88, San José del Guaviare'),
(1000032, 'David Muñoz', 'Turismólogo', 'Avenida 18 #16-55, Arauca'),
(1000033, 'Mónica Calderón', 'Historiadora', 'Calle 11 #23-14, Duitama'),
(1000034, 'José Ramírez', 'Ornitólogo', 'Carrera 14 #8-77, Girardot'),
(1000035, 'Carolina Ospina', 'Artista', 'Avenida 6 #29-10, Zipaquirá'),
(1000036, 'Hugo Vargas', 'Docente', 'Calle 15 #33-99, Fusagasugá'),
(1000037, 'Paula Sánchez', 'Administradora', 'Carrera 10 #17-55, Chiquinquirá'),
(1000038, 'Esteban Correa', 'Músico', 'Avenida 12 #20-88, Honda'),
(1000039, 'Andrea Mejía', 'Paleontóloga', 'Calle 25 #6-77, Ipiales'),
(1000040, 'Álvaro Acevedo', 'Ingeniero Forestal', 'Carrera 7 #14-22, Ocaña'),
(1000041, 'Juliana Duarte', 'Veterinaria', 'Avenida 22 #18-99, Tumaco'),
(1000042, 'Mauricio Rincón', 'Actor', 'Calle 9 #40-11, Cartago'),
(1000043, 'Verónica León', 'Investigadora', 'Carrera 5 #21-66, San Gil'),
(1000044, 'César Molina', 'Periodista', 'Avenida 13 #8-55, Pamplona'),
(1000045, 'Rosa Guzmán', 'Diseñadora de Moda', 'Calle 14 #11-88, Tuluá'),
(1000046, 'Héctor Andrade', 'Programador', 'Carrera 18 #9-22, La Dorada'),
(1000047, 'Isabel Cáceres', 'Bailarina', 'Avenida 26 #19-30, Magangué'),
(1000048, 'Nelson Trujillo', 'Escritor', 'Calle 28 #15-66, Pitalito'),
(1000049, 'Tatiana Torres', 'Nutricionista', 'Carrera 12 #8-44, Santa Rosa de Cabal'),
(1000050, 'Federico Bernal', 'Piloto', 'Avenida 30 #12-99, Rionegro');

-- PROYECTOS
INSERT INTO PROYECTO (PRESUPUESTO, FECHA_INICIO, FECHA_FIN) VALUES
(1500000.50, '2024-01-15', '2024-12-20'),
(2200000.75, '2023-05-10', '2024-10-30'),
(1350000.25, '2022-08-01', '2023-07-15'),
(980000.60, '2024-02-20', '2025-01-10'),
(2450000.80, '2023-09-05', '2025-03-25'),
(3100000.90, '2021-06-12', '2024-06-15'),
(1850000.30, '2024-04-01', '2026-02-28'),
(2650000.45, '2023-07-20', '2025-11-10'),
(1450000.65, '2022-03-15', '2024-05-22'),
(1950000.85, '2024-01-10', '2024-12-10'),
(2750000.75, '2023-11-01', '2026-01-30'),
(3600000.50, '2024-05-05', '2027-06-20'),
(1250000.95, '2022-09-15', '2024-03-15'),
(2900000.35, '2021-12-10', '2025-08-12'),
(4100000.60, '2023-02-25', '2026-10-05'),
(2300000.25, '2024-06-01', '2026-07-30'),
(3200000.80, '2023-04-12', '2026-03-15'),
(1700000.45, '2022-07-25', '2024-09-10'),
(2750000.95, '2024-08-05', '2025-12-22'),
(2850000.70, '2023-10-20', '2026-11-15'),
(3650000.30, '2024-03-10', '2027-02-18'),
(1300000.55, '2022-11-15', '2024-07-10'),
(2800000.85, '2021-05-20', '2025-10-20'),
(1900000.40, '2023-06-12', '2026-05-10'),
(2500000.25, '2024-09-01', '2027-04-05'),
(3400000.90, '2023-12-10', '2026-06-30'),
(1600000.60, '2022-04-25', '2024-12-05'),
(2950000.35, '2021-10-15', '2025-08-15'),
(1850000.20, '2023-02-05', '2024-11-10'),
(3700000.75, '2024-07-01', '2027-08-20'),
(2100000.55, '2022-06-18', '2024-09-25'),
(2550000.90, '2021-09-30', '2025-07-12'),
(3000000.70, '2023-11-05', '2026-10-05'),
(2750000.60, '2024-02-15', '2026-09-01'),
(1950000.50, '2022-08-10', '2024-06-20'),
(2850000.80, '2023-05-25', '2026-05-10'),
(2500000.30, '2024-04-15', '2025-12-30'),
(3400000.95, '2023-07-10', '2027-03-25'),
(1250000.65, '2022-12-20', '2024-08-05'),
(2850000.40, '2021-07-15', '2025-09-10'),
(3900000.70, '2023-03-05', '2026-12-12'),
(2100000.55, '2024-01-01', '2025-07-22'),
(2750000.20, '2022-05-10', '2024-11-15'),
(3500000.80, '2021-08-30', '2025-10-01'),
(1900000.75, '2023-09-15', '2026-02-28'),
(2850000.50, '2024-06-05', '2026-08-25'),
(1600000.45, '2022-11-01', '2024-09-10'),
(3100000.95, '2021-10-05', '2025-12-01'),
(2750000.85, '2023-04-20', '2026-07-20'),
(3500000.60, '2024-02-12', '2027-01-10');

-- ESPECIES 
INSERT INTO ESPECIE (NOMBRE_CIENTIFICO, NOMBRE_VULGAR, TIPO) VALUES
('Panthera onca', 'Jaguar', 'ANIMAL'),
('Tremarctos ornatus', 'Oso de anteojos', 'ANIMAL'),
('Cebus capucinus', 'Mono capuchino', 'ANIMAL'),
('Hydrochoerus hydrochaeris', 'Capibara', 'ANIMAL'),
('Boa constrictor', 'Boa', 'ANIMAL'),
('Crocodylus intermedius', 'Caimán llanero', 'ANIMAL'),
('Ara macao', 'Guacamayo escarlata', 'ANIMAL'),
('Chelonoidis carbonarius', 'Morrocoy', 'ANIMAL'),
('Crax alberti', 'Paujil de pico azul', 'ANIMAL'),
('Ateles hybridus', 'Mono araña', 'ANIMAL'),
('Podocnemis expansa', 'Tortuga charapa', 'ANIMAL'),
('Myrmecophaga tridactyla', 'Oso hormiguero', 'ANIMAL'),
('Ramphastos tucanus', 'Tucán toco', 'ANIMAL'),
('Saimiri sciureus', 'Mono ardilla', 'ANIMAL'),
('Tayassu pecari', 'Sajino', 'ANIMAL'),
('Lontra longicaudis', 'Nutria neotropical', 'ANIMAL'),
('Crax rubra', 'Paujil común', 'ANIMAL'),
('Potos flavus', 'Kinkajú', 'ANIMAL'),
('Mazama americana', 'Venado colorado', 'ANIMAL'),
('Leptodactylus pentadactylus', 'Rana toro', 'ANIMAL'),
('Bromelia balansae', 'Bromelia', 'VEGETAL'),
('Heliconia rostrata', 'Platanillo', 'VEGETAL'),
('Ceiba pentandra', 'Ceiba', 'VEGETAL'),
('Swietenia macrophylla', 'Caoba', 'VEGETAL'),
('Tabebuia rosea', 'Roble rosado', 'VEGETAL'),
('Victoria amazonica', 'Victoria regia', 'VEGETAL'),
('Bactris gasipaes', 'Chontaduro', 'VEGETAL'),
('Cedrela odorata', 'Cedro', 'VEGETAL'),
('Euterpe precatoria', 'Palma asaí', 'VEGETAL'),
('Ormosia coccinea', 'Chambira', 'VEGETAL'),
('Couroupita guianensis', 'Árbol de bala', 'VEGETAL'),
('Handroanthus chrysanthus', 'Guayacán amarillo', 'VEGETAL'),
('Cinchona officinalis', 'Cascarilla', 'VEGETAL'),
('Alibertia patinoi', 'Borojó', 'VEGETAL'),
('Espeletia grandiflora', 'Frailejón', 'VEGETAL'),
('Licania pyrifolia', 'Níspero', 'VEGETAL'),
('Ochroma pyramidale', 'Balsa', 'VEGETAL'),
('Clusia multiflora', 'Sangregado', 'VEGETAL'),
('Anthurium andreanum', 'Anturio', 'VEGETAL'),
('Azurite', 'Azurita', 'MINERAL'),
('Quartz', 'Cuarzo', 'MINERAL'),
('Malachite', 'Malaquita', 'MINERAL'),
('Hematite', 'Hematita', 'MINERAL'),
('Calcite', 'Calcita', 'MINERAL'),
('Galena', 'Galena', 'MINERAL'),
('Turquoise', 'Turquesa', 'MINERAL'),
('Pyrite', 'Pirita', 'MINERAL'),
('Fluorite', 'Fluorita', 'MINERAL'),
('Obsidian', 'Obsidiana', 'MINERAL');

-- AREA_PERSONAL
INSERT INTO AREA_PERSONAL (ID_PERSONAL, ID_AREA) VALUES
(1, 3), (1, 5), (2, 1), (2, 4), (3, 2), (4, 3), (5, 6), (6, 7), (7, 5), (8, 9),
(9, 10), (10, 8), (11, 12), (12, 11), (13, 14), (14, 15), (15, 16), (16, 17), (17, 18), (18, 19),
(19, 20), (20, 21), (21, 22), (22, 23), (23, 24), (24, 25), (25, 26), (26, 27), (27, 28), (28, 29),
(29, 30), (30, 31), (31, 32), (32, 33), (33, 34), (34, 35), (35, 36), (36, 37), (37, 38), (38, 39),
(39, 40), (40, 41), (41, 42), (42, 43), (43, 44), (44, 45), (45, 46), (46, 47), (47, 48), (48, 49);
-- ALOJAMIENTO
INSERT INTO ALOJAMIENTO (ID_PARQUE_PERTENECE, CAPACIDAD, CATEGORIA) VALUES
(1, 50, 'Cabaña'),
(2, 30, 'Eco-Lodge'),
(3, 40, 'Camping'),
(4, 20, 'Hostal'),
(5, 60, 'Resort'),
(6, 35, 'Glamping'),
(7, 45, 'Refugio'),
(8, 25, 'Cabaña'),
(9, 55, 'Hotel'),
(10, 32, 'Camping'),
(11, 28, 'Cabaña'),
(12, 38, 'Eco-Lodge'),
(13, 48, 'Refugio'),
(14, 22, 'Hostal'),
(15, 58, 'Resort'),
(16, 34, 'Glamping'),
(17, 44, 'Cabaña'),
(18, 29, 'Hotel'),
(19, 50, 'Camping'),
(20, 37, 'Cabaña'),
(21, 26, 'Refugio'),
(22, 42, 'Hostal'),
(23, 52, 'Resort'),
(24, 33, 'Glamping'),
(25, 46, 'Eco-Lodge'),
(26, 31, 'Camping'),
(27, 41, 'Cabaña'),
(28, 21, 'Hotel'),
(29, 39, 'Refugio'),
(30, 43, 'Hostal'),
(31, 53, 'Resort'),
(32, 27, 'Glamping'),
(33, 47, 'Eco-Lodge'),
(34, 36, 'Camping'),
(35, 23, 'Cabaña'),
(36, 49, 'Hotel'),
(37, 24, 'Refugio'),
(38, 59, 'Resort'),
(39, 30, 'Glamping'),
(40, 42, 'Eco-Lodge'),
(41, 56, 'Camping'),
(42, 20, 'Cabaña'),
(43, 57, 'Hotel'),
(44, 19, 'Refugio'),
(45, 18, 'Hostal'),
(46, 17, 'Resort'),
(47, 16, 'Glamping'),
(48, 15, 'Eco-Lodge');


-- VISIANTE_ALOJAMIENTO
INSERT INTO VISITANTE_ALOJAMIENTO (ID_VISITANTE, ID_ALOJAMIENTO) VALUES
(1, 10),  -- Carlos Pérez se aloja en el alojamiento con ID 10
(2, 20),  -- María Gómez se aloja en el alojamiento con ID 20
(3, 5),   -- Juan Rodríguez se aloja en el alojamiento con ID 5
(4, 15),  -- Ana Martínez se aloja en el alojamiento con ID 15
(5, 30),  -- Luis Sánchez se aloja en el alojamiento con ID 30
(6, 12),  -- Paula Torres se aloja en el alojamiento con ID 12
(7, 25),  -- Andrés Ramírez se aloja en el alojamiento con ID 25
(8, 7),   -- Diana Castillo se aloja en el alojamiento con ID 7
(9, 18),  -- Fernando Vargas se aloja en el alojamiento con ID 18
(10, 22), -- Laura Medina se aloja en el alojamiento con ID 22
(11, 3),  -- Pedro Herrera se aloja en el alojamiento con ID 3
(12, 13), -- Lucía Ríos se aloja en el alojamiento con ID 13
(13, 8),  -- Oscar Jiménez se aloja en el alojamiento con ID 8
(14, 21), -- Jorge Ruiz se aloja en el alojamiento con ID 21
(15, 14), -- Valentina Mora se aloja en el alojamiento con ID 14
(16, 6),  -- Santiago López se aloja en el alojamiento con ID 6
(17, 9),  -- Natalia Peña se aloja en el alojamiento con ID 9
(18, 11), -- Felipe Castro se aloja en el alojamiento con ID 11
(19, 16), -- Camila Fajardo se aloja en el alojamiento con ID 16
(20, 17), -- Manuel Ortega se aloja en el alojamiento con ID 17
(21, 19), -- Eliana Gil se aloja en el alojamiento con ID 19
(22, 23), -- Ricardo Pardo se aloja en el alojamiento con ID 23
(23, 24), -- Patricia Velásquez se aloja en el alojamiento con ID 24
(24, 4),  -- Roberto Bustos se aloja en el alojamiento con ID 4
(25, 26), -- Daniela Navarro se aloja en el alojamiento con ID 26
(26, 28), -- Sebastián Ramírez se aloja en el alojamiento con ID 28
(27, 29), -- Lorena Espinosa se aloja en el alojamiento con ID 29
(28, 31), -- Hernando Londoño se aloja en el alojamiento con ID 31
(29, 32), -- Marcela Suárez se aloja en el alojamiento con ID 32
(30, 33), -- Gabriel Gutiérrez se aloja en el alojamiento con ID 33
(31, 34), -- Sara Fernández se aloja en el alojamiento con ID 34
(32, 35), -- David Muñoz se aloja en el alojamiento con ID 35
(33, 36), -- Mónica Calderón se aloja en el alojamiento con ID 36
(34, 37), -- José Ramírez se aloja en el alojamiento con ID 37
(35, 38), -- Carolina Ospina se aloja en el alojamiento con ID 38
(36, 39), -- Hugo Vargas se aloja en el alojamiento con ID 39
(37, 40), -- Paula Sánchez se aloja en el alojamiento con ID 40
(38, 41), -- Esteban Correa se aloja en el alojamiento con ID 41
(39, 42), -- Andrea Mejía se aloja en el alojamiento con ID 42
(40, 43), -- Álvaro Acevedo se aloja en el alojamiento con ID 43
(41, 44), -- Juliana Duarte se aloja en el alojamiento con ID 44
(42, 45), -- Mauricio Rincón se aloja en el alojamiento con ID 45
(43, 46), -- Verónica León se aloja en el alojamiento con ID 46
(44, 47), -- César Molina se aloja en el alojamiento con ID 47
(45, 48), -- Rosa Guzmán se aloja en el alojamiento con ID 48
(46, 1),  -- Héctor Andrade se aloja en el alojamiento con ID 1
(47, 2),  -- Isabel Cáceres se aloja en el alojamiento con ID 2
(48, 5),  -- Nelson Trujillo se aloja en el alojamiento con ID 5
(49, 10), -- Tatiana Torres se aloja en el alojamiento con ID 10
(50, 14); -- Federico Bernal se aloja en el alojamiento con ID 14

-- AREA ESPECIE 
INSERT INTO AREA_ESPECIE (ID_AREA, ID_ESPECIE, CANTIDAD) VALUES
(1, 1, 5),   -- Jaguar en el área 1 con 5 ejemplares
(2, 2, 3),   -- Oso de anteojos en el área 2 con 3 ejemplares
(3, 3, 8),   -- Mono capuchino en el área 3 con 8 ejemplares
(4, 4, 6),   -- Capibara en el área 4 con 6 ejemplares
(5, 5, 4),   -- Boa en el área 5 con 4 ejemplares
(6, 6, 7),   -- Caimán llanero en el área 6 con 7 ejemplares
(7, 7, 3),   -- Guacamayo escarlata en el área 7 con 3 ejemplares
(8, 8, 9),   -- Morrocoy en el área 8 con 9 ejemplares
(9, 9, 5),   -- Paujil de pico azul en el área 9 con 5 ejemplares
(10, 10, 8), -- Mono araña en el área 10 con 8 ejemplares
(11, 11, 6), -- Tortuga charapa en el área 11 con 6 ejemplares
(12, 12, 4), -- Oso hormiguero en el área 12 con 4 ejemplares
(13, 13, 7), -- Tucán toco en el área 13 con 7 ejemplares
(14, 14, 5), -- Mono ardilla en el área 14 con 5 ejemplares
(15, 15, 6), -- Sajino en el área 15 con 6 ejemplares
(16, 16, 3), -- Nutria neotropical en el área 16 con 3 ejemplares
(17, 17, 9), -- Paujil común en el área 17 con 9 ejemplares
(18, 18, 7), -- Kinkajú en el área 18 con 7 ejemplares
(19, 19, 6), -- Venado colorado en el área 19 con 6 ejemplares
(20, 20, 8), -- Rana toro en el área 20 con 8 ejemplares
(21, 21, 5), -- Bromelia en el área 21 con 5 ejemplares
(22, 22, 4), -- Platanillo en el área 22 con 4 ejemplares
(23, 23, 6), -- Ceiba en el área 23 con 6 ejemplares
(24, 24, 5), -- Caoba en el área 24 con 5 ejemplares
(25, 25, 7), -- Roble rosado en el área 25 con 7 ejemplares
(26, 26, 6), -- Victoria regia en el área 26 con 6 ejemplares
(27, 27, 4), -- Chontaduro en el área 27 con 4 ejemplares
(28, 28, 5), -- Cedro en el área 28 con 5 ejemplares
(29, 29, 8), -- Palma asaí en el área 29 con 8 ejemplares
(30, 30, 9), -- Chambira en el área 30 con 9 ejemplares
(31, 31, 7), -- Árbol de bala en el área 31 con 7 ejemplares
(32, 32, 6), -- Guayacán amarillo en el área 32 con 6 ejemplares
(33, 33, 8), -- Cascarilla en el área 33 con 8 ejemplares
(34, 34, 5), -- Borojó en el área 34 con 5 ejemplares
(35, 35, 7), -- Frailejón en el área 35 con 7 ejemplares
(36, 36, 6), -- Níspero en el área 36 con 6 ejemplares
(37, 37, 5), -- Balsa en el área 37 con 5 ejemplares
(38, 38, 4), -- Sangregado en el área 38 con 4 ejemplares
(39, 39, 9), -- Anturio en el área 39 con 9 ejemplares
(40, 40, 3), -- Azurita en el área 40 con 3 ejemplares
(41, 41, 5), -- Cuarzo en el área 41 con 5 ejemplares
(42, 42, 7), -- Malaquita en el área 42 con 7 ejemplares
(43, 43, 6), -- Hematita en el área 43 con 6 ejemplares
(44, 44, 4), -- Calcita en el área 44 con 4 ejemplares
(45, 45, 8), -- Galena en el área 45 con 8 ejemplares
(46, 46, 9), -- Turquesa en el área 46 con 9 ejemplares
(47, 47, 5), -- Pirita en el área 47 con 5 ejemplares
(48, 48, 7), -- Fluorita en el área 48 con 7 ejemplares
(49, 49, 6); -- Obsidiana en el área 49 con 6 ejemplares

-- PROYECTO_INVESTIGACION
-- select P.ID
-- from personal p 
-- where P.TIPO ="004";

INSERT INTO PROYECTO_INVESTIGACION (ID_ENCARGADO, ID_PROYECTO, ID_ESPECIE)
VALUES
(4, 1, 1),   -- Persona 4, Proyecto 1, Especie 1
(4, 2, 2),   -- Persona 4, Proyecto 2, Especie 2
(4, 3, 3),   -- Persona 4, Proyecto 3, Especie 3
(4, 4, 4),   -- Persona 4, Proyecto 4, Especie 4
(4, 5, 5),   -- Persona 4, Proyecto 5, Especie 5

(8, 6, 6),   -- Persona 8, Proyecto 6, Especie 6
(8, 7, 7),   -- Persona 8, Proyecto 7, Especie 7
(8, 8, 8),   -- Persona 8, Proyecto 8, Especie 8
(8, 9, 9),   -- Persona 8, Proyecto 9, Especie 9
(8, 10, 10), -- Persona 8, Proyecto 10, Especie 10

(12, 11, 11), -- Persona 12, Proyecto 11, Especie 11
(12, 12, 12), -- Persona 12, Proyecto 12, Especie 12
(12, 13, 13), -- Persona 12, Proyecto 13, Especie 13
(12, 14, 14), -- Persona 12, Proyecto 14, Especie 14
(12, 15, 15), -- Persona 12, Proyecto 15, Especie 15

(16, 16, 16), -- Persona 16, Proyecto 16, Especie 16
(16, 17, 17), -- Persona 16, Proyecto 17, Especie 17
(16, 18, 18), -- Persona 16, Proyecto 18, Especie 18
(16, 19, 19), -- Persona 16, Proyecto 19, Especie 19
(16, 20, 20), -- Persona 16, Proyecto 20, Especie 20

(20, 21, 21), -- Persona 20, Proyecto 21, Especie 21
(20, 22, 22), -- Persona 20, Proyecto 22, Especie 22
(20, 23, 23), -- Persona 20, Proyecto 23, Especie 23
(20, 24, 24), -- Persona 20, Proyecto 24, Especie 24
(20, 25, 25), -- Persona 20, Proyecto 25, Especie 25

(24, 26, 26), -- Persona 24, Proyecto 26, Especie 26
(24, 27, 27), -- Persona 24, Proyecto 27, Especie 27
(24, 28, 28), -- Persona 24, Proyecto 28, Especie 28
(24, 29, 29), -- Persona 24, Proyecto 29, Especie 29
(24, 30, 30), -- Persona 24, Proyecto 30, Especie 30

(28, 31, 31), -- Persona 28, Proyecto 31, Especie 31
(28, 32, 32), -- Persona 28, Proyecto 32, Especie 32
(28, 33, 33), -- Persona 28, Proyecto 33, Especie 33
(28, 34, 34), -- Persona 28, Proyecto 34, Especie 34
(28, 35, 35), -- Persona 28, Proyecto 35, Especie 35

(32, 36, 36), -- Persona 32, Proyecto 36, Especie 36
(32, 37, 37), -- Persona 32, Proyecto 37, Especie 37
(32, 38, 38), -- Persona 32, Proyecto 38, Especie 38
(32, 39, 39), -- Persona 32, Proyecto 39, Especie 39
(32, 40, 40), -- Persona 32, Proyecto 40, Especie 40

(36, 41, 41), -- Persona 36, Proyecto 41, Especie 41
(36, 42, 42), -- Persona 36, Proyecto 42, Especie 42
(36, 43, 43), -- Persona 36, Proyecto 43, Especie 43
(36, 44, 44), -- Persona 36, Proyecto 44, Especie 44
(36, 45, 45), -- Persona 36, Proyecto 45, Especie 45

(40, 46, 46), -- Persona 40, Proyecto 46, Especie 46
(40, 47, 47), -- Persona 40, Proyecto 47, Especie 47
(40, 48, 48), -- Persona 40, Proyecto 48, Especie 48
(40, 49, 49), -- Persona 40, Proyecto 49, Especie 49
(40, 50, 1);  -- Persona 40, Proyecto 50, Especie 1 (repetida)


-- VISITANTES_PARQUE 
-- Asignar visitantes a los parques con empleados registrando la entrada y algunos se quedan más de un día
INSERT INTO VISITANTE_PARQUE (ID_VISITANTE, ID_PARQUE, ID_EMPLEADO, FECHA_INGRESO, FECHA_SALIDA)
VALUES
(1, 1, 1, '2025-03-01', '2025-03-01'),
(2, 2, 5, '2025-03-02', '2025-03-02'),
(3, 3, 9, '2025-03-03', '2025-03-03'),
(4, 4, 13, '2025-03-04', '2025-03-04'),
(5, 5, 17, '2025-03-05', '2025-03-05'),
(6, 6, 21, '2025-03-06', '2025-03-06'),
(7, 7, 25, '2025-03-07', '2025-03-07'),
(8, 8, 29, '2025-03-08', '2025-03-08'),
(9, 9, 33, '2025-03-09', '2025-03-09'),
(10, 10, 37, '2025-03-10', '2025-03-10'),
(11, 11, 41, '2025-03-11', '2025-03-11'),
(12, 12, 45, '2025-03-12', '2025-03-12'),
(13, 13, 49, '2025-03-13', '2025-03-13'),
(14, 14, 1, '2025-03-14', '2025-03-14'),
(15, 15, 5, '2025-03-15', '2025-03-15'),
(16, 16, 9, '2025-03-16', '2025-03-16'),
(17, 17, 13, '2025-03-17', '2025-03-17'),
(18, 18, 17, '2025-03-18', '2025-03-20'),  -- Se queda del 18 al 20
(19, 19, 21, '2025-03-19', '2025-03-21'),  -- Se queda del 19 al 21
(20, 20, 25, '2025-03-20', '2025-03-20'),
(21, 21, 29, '2025-03-21', '2025-03-21'),
(22, 22, 33, '2025-03-22', '2025-03-22'),
(23, 23, 37, '2025-03-23', '2025-03-24'),  -- Se queda del 23 al 24
(24, 24, 41, '2025-03-24', '2025-03-24'),
(25, 25, 45, '2025-03-25', '2025-03-25'),
(26, 26, 49, '2025-03-26', '2025-03-27'),  -- Se queda del 26 al 27
(27, 27, 1, '2025-03-27', '2025-03-27'),
(28, 28, 5, '2025-03-28', '2025-03-28'),
(29, 29, 9, '2025-03-29', '2025-03-29'),
(30, 30, 13, '2025-03-30', '2025-03-30'),
(31, 31, 17, '2025-03-31', '2025-03-31'),
(32, 32, 21, '2025-04-01', '2025-04-01'),
(33, 33, 25, '2025-04-02', '2025-04-02'),
(34, 34, 29, '2025-04-03', '2025-04-04'),  -- Se queda del 3 al 4
(35, 35, 33, '2025-04-04', '2025-04-05'),  -- Se queda del 4 al 5
(36, 36, 37, '2025-04-05', '2025-04-05'),
(37, 37, 41, '2025-04-06', '2025-04-06'),
(38, 38, 45, '2025-04-07', '2025-04-07'),
(39, 39, 49, '2025-04-08', '2025-04-08'),
(40, 40, 1, '2025-04-09', '2025-04-09'),
(41, 41, 5, '2025-04-10', '2025-04-10'),
(42, 42, 9, '2025-04-11', '2025-04-11'),
(43, 43, 13, '2025-04-12', '2025-04-12'),
(44, 44, 17, '2025-04-13', '2025-04-13'),
(45, 45, 21, '2025-04-14', '2025-04-14'),
(46, 46, 25, '2025-04-15', '2025-04-15'),
(47, 47, 29, '2025-04-16', '2025-04-16'),
(48, 48, 33, '2025-04-17', '2025-04-17'),
(49, 2, 37, '2025-04-18', '2025-04-18'),
(50, 1, 41, '2025-04-19', '2025-04-19');

-- Asignando vehículos a los empleados de vigilancia
INSERT INTO VEHICULO_VIGILANCIA (PLACA, MARCA, ID_ENCARGADO)
VALUES
('ABC123', 'Toyota', 2),    -- Personal de vigilancia ID 2
('DEF456', 'Honda', 6),     -- Personal de vigilancia ID 6
('GHI789', 'Ford', 10),     -- Personal de vigilancia ID 10
('JKL012', 'Chevrolet', 14),-- Personal de vigilancia ID 14
('MNO345', 'Mazda', 18),    -- Personal de vigilancia ID 18
('PQR678', 'Hyundai', 22),  -- Personal de vigilancia ID 22
('STU901', 'Nissan', 26),   -- Personal de vigilancia ID 26
('VWX234', 'BMW', 30),      -- Personal de vigilancia ID 30
('YZA567', 'Mercedes', 34), -- Personal de vigilancia ID 34
('BCD890', 'Audi', 38),     -- Personal de vigilancia ID 38
('EFG123', 'Volkswagen', 42), -- Personal de vigilancia ID 42
('HIJ456', 'Kia', 46),      -- Personal de vigilancia ID 46
('LMN789', 'Peugeot', 50);  -- Personal de vigilancia ID 50

-- departamento_parque
INSERT INTO departamento_parque (ID_DEPARTAMENTO, ID_PARQUE) VALUES
(1, 3), (1, 5), (1, 8), (1, 10), (1, 12),
(2, 4), (2, 6), (2, 9), (2, 13), (2, 15),
(3, 7), (3, 8), (3, 11), (3, 14), (3, 16),
(4, 2), (4, 5), (4, 9), (4, 12), (4, 17),
(5, 1), (5, 6), (5, 8), (5, 10), (5, 18),
(6, 4), (6, 7), (6, 13), (6, 15), (6, 19),
(7, 3), (7, 9), (7, 11), (7, 14), (7, 20),
(8, 5), (8, 6), (8, 12), (8, 17), (8, 21),
(9, 8), (9, 7), (9, 10), (9, 16), (9, 22),
(10, 1), (10, 3), (10, 4), (10, 11), (10, 23);

