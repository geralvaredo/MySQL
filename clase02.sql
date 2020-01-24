/* 
	conmentario Bloque
	CURSO DE INTRO A BASE DE DATOS
	FECHA : 05/09/15
	AUTOR : GERMAN ALVAREDO
 */
/* 
	Diagrama de entidad y  relaciones me da un modelo de modelo lógico de base de datos.
    No se puede tener base de datos con mismo nombre.
    Drop elimina si existe una base anterior con el nombre especificado


*/
drop database if exists cursomysql; -- elimina la base de datos si existe con ese nombre

create database cursomysql ; --  crea la base

use cursomysql ;

create table clientes(
	codigo 		integer auto_increment,
	nombre 		varchar(20)	not null,
	apellido	varchar(20) not null,
	cuit		varchar(13)	not null,
	direccion	varchar(50) not null,
	comentarios varchar(140),
	primary key (codigo)
);
show databases ;
show tables ;
describe clientes ;

/* INGRESO DE 5 REGISTROS CON INSERT */
insert into clientes(nombre,apellido,cuit,direccion) 
	values ('juan','perez', '30-2569874-9','peru 323') ;
insert into clientes(nombre,apellido,cuit,direccion) 
	values('diego','torres','30-565888-4','chile 320') ;
insert into clientes(nombre,apellido,cuit,direccion) 
	values('laura', 'gomez','30-29698741-0','san juan 420');
insert into clientes(nombre,apellido,cuit,direccion) 
	values('mario','lopez','30-29698666-3','lavalle 770') ;
insert into clientes(nombre,apellido,cuit,direccion)
	values('dario','sanchez','20-32698999-1','mexico 150') ;
insert into clientes(nombre,apellido,cuit,direccion) 
	values ('juan','perez', '30-2569874-9','peru 323') ;
insert into clientes(nombre,apellido,cuit,direccion) 
	values ('analia','mercato', '225698749','peru 323') ;

create table Articulos(
	Codigo 		integer,
	Nombre 		varchar(50)	,
	Precio      double,
	Stock       integer,
	primary key (Codigo)
);

create table Facturas(
	Letra 		char(1),
	Numero 		integer,
	Fecha       date   not null,
	Monto       double not null,
	primary key (Letra,Numero) 
);
insert into facturas 
  values ('a',0001,'2011/10/18',500);
insert into facturas 
  values ('a',0002,'2011/10/18',2500);
insert into facturas 
  values ('b',0003,'2011/10/18',320);
insert into facturas 
  values ('b',0004,'2011/10/18',120);
insert into facturas 
  values ('b',0005,'2011/10/18',560);
-- inserto un registro con la fecha actual
insert into facturas 
  values ('c',0006,curdate(),300);
insert into facturas 
  values ('c',0007,curdate(),698);
	
create table amigos
(
	nombre varchar(20),
	apellido varchar(30)
) ;
-- INSERTA CAMPOS EN OTRA TABLA
insert into amigos (nombre, apellido) 
	select nombre, apellido from clientes ;

select * from amigos ;

 -- create table nombres ;
-- select distinct nombre from clientes ;
-- desc clientes ;
-- describe nombres ;
-- select * from nombres ;

insert into amigos
values ('Marina', 'Fernandez'),
		('Lujan','Tucci'),
		('Gabriel','Strauss') ;
select * from amigos ;

delete from clientes where codigo = 188;
select * from clientes ;

select * from clientes ;
-- APAGO EL MECANISMO DE SEGURIDAD DE BASE DE DATOS PARA OPERAR CON DELETE PARA MODIFICAR LOS REGISTROS QUE QUIERA.
SET SQL_SAFE_UPDATES = 0 ;
delete from clientes where nombre = 'LAURA' ;


-- VACIA TODA LA TABLA CLIENTE , ES UN SENTENCIA DDL , ES MAS EFICAZ , REINICIA LA SECUENCIA DE LOS AUTONUMERICOS 
truncate clientes ;
select * from clientes ;

-- MODIFICO FILAS CON EL UPDATE
update clientes
set nombre = 'LAURA'
where codigo = 6 ;

select * from clientes ;

-- Basándose en la tabla clientes realizar los siguientes puntos.
insert into clientes
		values(null,'fernando','saibene','30-65707580-9','burzaco 100',null),
				(null,'german','alvaredo','30-37206216-9','jose marmol 800',null),
				(null,'Octavio','Villegas','30-15161720-9','ni idea 800',null),
				(null,'Christian','Bauss','30-17181920-9', 'panza 500',null), 
				(null,'german','topa','30-21222324-9','putin 400',null) ;

insert into clientes(nombre,apellido,cuit,direccion)
	values('Pepe', 'Guardiola','30-29698741-0','san juan 420');
insert into clientes(nombre,apellido,cuit,direccion) 
	values('mario','Kempes','30-29698666-3','lavalle 770') ;
insert into clientes(nombre,apellido,cuit,direccion)
	values('dario','Lopilato','20-32698999-1','mexico 150') ;
insert into clientes(nombre,apellido,cuit,direccion) 
	values ('juan','Peruggia', '30-2569874-9','peru 323') ;
insert into clientes(nombre,apellido,cuit,direccion) 
	values ('analisa','melo', '225698749','peru 323') ;	

select * from clientes ;
update clientes
set nombre = 'Jose' where codigo = 1 ;

update clientes
set nombre = 'Pablo' , apellido = 'fuentes' ,   cuit = '20-21053119-0' where codigo = 3 ;

update clientes
set comentarios = '  ';

SET SQL_SAFE_UPDATES = 0 ;
delete from clientes where apellido = 'perez' ;
delete from clientes where cuit like  '%0' ;

-- 1- 	Insertar 5 clientes en la tabla clientes utilizando el insert into sin utilizar 
-- campos como parte de la sentencias, es decir de la forma simplificada.
-- 2-	Insertar 5 clientes en la tabla clientes utilizando los campos como parte de la 
-- sentencias, es decir de la forma extendida. Completar solo los campos nombre, 
-- apellido y CUIT y Direccion.
-- 3-	Actualizar el nombre del cliente 1 a Jose.
-- 4-	Actualizar el nombre apellido y cuit del cliente 3 a Pablo Fuentes 20-21053119-0.
-- 5-	Actualizar todos los comentarios NULL  a  .
-- 6-	Eliminar los clientes con apellido Perez.
-- 7-	Eliminar los clientes con CUIT Terminan en 0.




-- Basando se en la tabla artículos, realizar los siguientes puntos.
-- 	8- Aumentar un 20% los precios de los artículos con precio menor igual a 50.
-- 	9- Aumentar un 15% los precios de los artículos con precio mayor a 50.
-- 	10- Bajar un 5% los precios de los artículos con precio mayor a 200.
-- 	11- Eliminar los artículos con stock menor a 10.


