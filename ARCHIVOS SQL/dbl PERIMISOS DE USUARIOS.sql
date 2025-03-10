use gestion_parque;
select user, host from mysql.user;

-- usuario administrador
drop user if exists 'admin'@'%';
flush privileges;

create user 'admin'@'%' identified by 'admin_123';
grant all privileges on gestion_parque.* to 'admin'@'%';
flush privileges;

-- usuario gestor de parques
drop user if exists 'gestor_parques'@'%';
flush privileges;

create user 'gestor_parques'@'%' identified by 'gestor_123';
grant select, insert, update, delete on gestion_parque.parque to 'gestor_parques'@'%';
grant select, insert, update, delete on gestion_parque.area to 'gestor_parques'@'%';
grant select, insert, update, delete on gestion_parque.especie to 'gestor_parques'@'%';
flush privileges;

-- usuario investigador
drop user if exists 'investigador'@'%';
flush privileges;

create user 'investigador'@'%' identified by 'investigador_123';
grant select on gestion_parque.proyecto to 'investigador'@'%';
grant select on gestion_parque.especie to 'investigador'@'%';
flush privileges;

-- auditor
drop user if exists 'auditor'@'123';
flush privileges;

create user 'auditor'@'123' identified by 'auditor_123';
grant select on gestion_parque.proyecto to 'auditor'@'123';
grant select on gestion_parque.personal to 'auditor'@'123';
flush privileges;

-- encargado visitantes
drop user if exists 'encargado_visitantes'@'%';
flush privileges;

create user 'encargado_visitantes'@'%' identified by 'encargado123';
grant select, insert, update, delete on gestion_parque.visitante to 'encargado_visitantes'@'%';
grant select, insert, update, delete on gestion_parque.alojamiento to 'encargado_visitantes'@'%';
flush privileges;



