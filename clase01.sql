drop database if exists cursomysql;
-- borro la BD si existe

create database cursomysql;
-- con este comando creo una base de datos

use cursomysql;
-- con el comando use entramos a una BD

create table clientes (
  codigo      integer auto_increment,
  nombre      varchar(20) not null,
  apellido    varchar(20) not null,
  cuit        varchar(13),
  direccion   varchar(50),
  comentarios varchar(140),
  primary key (codigo)
);
-- creamos la tabla clientes

insert into clientes (nombre,apellido,cuit,direccion) 
  values ('juan','perez','20-27874669-3','peru 323');
insert into clientes (nombre,apellido,cuit,direccion) 
  values ('diego','torres','25-17874669-4','chile 320');
insert into clientes (nombre,apellido,cuit,direccion) 
  values ('laura','gomez','32-25874878-0','san juan 420');
insert into clientes (nombre,apellido,cuit,direccion) 
  values ('mariela','lopez','20-25874669-9','lavalle 770');
insert into clientes (nombre,apellido,cuit,direccion) 
  values ('dario','sanchez','24-258745-1','mexico 150');
insert into clientes (nombre,apellido,cuit,direccion) 
  values ('analia','mercato','20-22658999-4','Brasil 1350');
insert into clientes (nombre,apellido,cuit,direccion) 
  values ('mario','marquez','20-25887555-2','mexico 1740');
-- son 7 instrucciones que deben ejecutarse cada una

show tables;
show databases;
desc facturas;

create table facturas(
  letra  char(1),
  numero smallint unsigned,
  fecha  date,
  monto  double,
  primary key (letra,numero)
);

create table articulos(
  codigo integer,
  nombre varchar(50),
  precio double,
  stock  integer,
  primary key (codigo)
);

-- 3- Cargar 5 registros en cada tabla
insert into articulos 
  values (1,'destornillador',25,50);
insert into articulos 
  values (2,'pinza',35,22);
insert into articulos values (3,'martillo',15,28);
insert into articulos values (4,'maza',35,18);
insert into articulos values (5,'balde',55,13);

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



-- modificar campos
alter table clientes modify edad tinyint unsigned;

describe clientes;

select * from clientes;

-- cambiar nombre a un campo
alter table clientes change edad antiguedad tinyint unsigned;

describe clientes;

select * from clientes;

-- borrar campos 
alter table clientes drop antiguedad;

describe clientes;

select * from clientes;

-- quito la clave primaria
-- para poder quitar clave primaria el campo no debe ser auto_increment
alter table clientes modify codigo int;

describe clientes;
-- ahora si quito la clave primaria
alter table clientes drop primary key;

describe clientes;
-- select * from clientes;
-- no es posible listar una tabla a la cual le quitamos la PK
-- no hay posibilidad de recorrido plano en MySQL

-- agregar clave primaria
alter table clientes add primary key (codigo);

describe clientes;

select * from clientes;

alter table clientes modify codigo int auto_increment;

-- renombrar tablas
rename table clientes to auxiliar, facturas to auxiliar2;
show tables;

rename table auxiliar to clientes , auxiliar2 to facturas;
show tables;

-- FILTRADO CON WHERE
 select * from clientes
where codigo < 3;



select * from clientes where codigo <3;
select * from clientes where codigo <= 3;

-- Operadores AND / OR
select * from clientes
  where codigo <3 and codigo > 5; -- esta sentencia es un absuerdo por lo cual no nos devolvera nada

select * from clientes
where codigo is null;


select* from clientes
 where codigo <3 or codigo >5; -- nos devileve los que son menores a 3 y los que son mayores a 5


select distinct nombre, apellido, direccion
 from clientes;

select * from clientes
 where comentarios is null;-- devuelve los clientes que no tienen comentarios

select * from clientes
 where comentarios is not null ; -- devuleve los clientes que tienen comentarios

select numero "Nro de Factura",date_format(fecha,'%d/%m/%y') Fecha,
monto, round( monto *.21, 2) as IVA
 from facturas -- columna calculada
 where letra ='a'and monto between 400 and 2000;

-- Parametro IN NOT IN
select * from clientes
 where codigo in (2, 4, 6);

-- Parametro like
select * from clientes
  where direccion like '%7__';
select * from clientes
where nombre like 'mar%';
 
select * from clientes
 where cuit like '__-________-_';
select * from clientes
 where cuit not like '__-________-_';

select * from clientes
 where nombre like 'm%a';

select * from clientes
 where nombre like 'ma%';

-- Order by asc y desc

select * from clientes order by nombre;

select * from facturas order by monto desc limit 3;

select * from clientes
order by apellido desc, nombre asc;

-- Clausula Limit
select * from clientes where codigo >3 limit 2

