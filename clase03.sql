SELECT * FROM clientes; /*  select selecciona , "*" accede a todas las columnas  * /

SELECT cuit,apellido FROM clientes;
select curdate() ; /*devuelve la fecha*/
select curtime() ; -- devuelve la hora
select sysdate() ; -- devuelve fecha y hora
select now() ; -- devuelve fecha y hora

/* por cada fila , devuelve un resultado*/
select concat(apellido,',',nombre) as "Nombre y Apellido", cuit from clientes ; -- Alias de Columnas con as
/* exporto el archivo con Export: a XML , HTML, JSON, ETC para el usuario */ 
select codigo from clientes 
where nombre <> 'mario' ;

select * from clientes where codigo > 3 ;
select * from clientes where codigo >= 3 ;

select * from clientes where nombre = 'dario' ;

-- And o Or

select * from clientes 
where codigo < 3 or codigo > 5  ;

-- DISTINT  saca las columnas distintas a las filas nombradas ; 
select distinct nombre, apellido , direccion from clientes ; 

-- SELECCIONA FILA DONDE LOS COMENTARIOS SEAN NULOS
select * from clientes 
where comentarios is null ;

-- SELECCIONA LAS COLUMNAS DONDE LOS COMENTARIO NO SEAN NULOS
select * from clientes 
where comentarios is not null ;

select Numero,Monto from Facturas ;

-- ROUND PARA DAR SALIDA CON LOS DECIMALES
-- DATE_FORMAT, DA FORMATO A LA FECHA
select Numero,Monto , round( Monto * .21,2) as "IVA", date_format (Fecha,'%d/%m/%Y') as "FECHA" from Facturas  
where Letra = 'a' ;
-- BETWEEN IGUAL QUE EL OR 
select Numero,Monto , round( Monto * .21,2) as "IVA", date_format (Fecha,'%d/%m/%Y') as "FECHA" from Facturas  
where Monto between 400 and 2000 ;

-- IN IGUAL QUE BETWEEN 
select * from clientes  
where codigo in (2,4,6);

select * from clientes  
where codigo not in (2,4,6);


-- UTILIZACION DEL LIKE PARA BUSCAR PATRONES EN LAS CADENAS DE CARACTERES
-- EL PORCENTAJE (%) TOMA LO QUE COMIENCE AL PRINCIPIO 
-- LA LINEA (_) TOMA ESE CARACTER DESPUES DE LA BUSQUEDA EN LA CADENA DE CARACTER
select * from clientes  
where direccion like '% 7__';


select * from clientes
where nombre like 'mar%';

select * from clientes
where  cuit not like '__-________-_' ;

select * from clientes
where nombre like 'm%a' ;

select * from clientes
where nombre like 'm_a%' ;


/* ORDENAR FILAS , ORDERBY CON CRITERIOS ASCENDENTE Y DESCENDENTE */ 
select * from clientes order by nombre ; 

select * from Facturas order by Monto desc ;

select * from Facturas order by Monto asc ;

select * from Facturas order by Monto desc limit 3 ;

select * from clientes order by apellido desc, nombre asc ;

select * from clientes order by apellido desc, nombre asc ;

/* DML  - insert , select */
/* DDL - Create , drop */
