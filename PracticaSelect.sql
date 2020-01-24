-- -----------
-- Ejercicio 3
-- -----------


-- 1 - Basándose en la tabla artículos obtener los siguientes listados.
drop database if exists Ejercicio03; 

create database Ejercicio03 ;

use Ejercicio03; 


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

 -- A
select * from articulos 
where precio > 10 ;
-- B
select * from articulos 
where precio >= 20 and precio <= 40 ;
-- C
select * from articulos 
where precio between 40 and 60 ;
-- D   
select * from articulos 
where precio = 20 and stock > 30 ;
-- E
select * from articulos 
where precio = 12 or precio = 20  or precio = 30 ;
-- F
select * from articulos 
where precio in(12,20,30) ;
-- G
select * from articulos 
where precio not in (12,20,30) ;

-- 2
select * from articulos  order by precio desc ,  nombre desc  ;
-- 3
select * ,  precio +  round( precio * .21,2)  as "Precio Con Iva"  from articulos  ;
-- 4
select * , '3'  as "Cantidad Cuotas" , round(((precio / 3) + (precio *.05)),2)  as "Valor de Cuotas" from articulos ;
-- a-	artículos con precio mayor a 10
-- b-	artículos con precio entre 20 y 40 (usar < y >)
-- c-	artículos con precio entre 40 y 60 (usar BETWEEN)
-- d-	artículos con precio = 20 y stock mayor a 30
-- e-	artículos con precio (12,20,30) no usar IN
-- f-	artículos con precio (12,20,30) usar el IN
-- g-	artículos que su precio no sea (12,20,30)

-- 	2- Listar los artículos ordenados por precio de mayor a menor, y si hubiera precio iguales deben quedar ordenados por nombre.
-- 	3- Listar todos los artículos incluyendo una columna denominada precio con IVA, la cual deberá tener el monto con el iva del producto.
-- 	4- Listar todos los artículos incluyendo una columna denominada “cantidad de cuotas” y otra “valor de cuota”, la cantidad es fija y es 3, el valor de cuota corresponde a 1/3 del monto con un 5% de interés.
