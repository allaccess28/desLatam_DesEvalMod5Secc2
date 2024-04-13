--creamos la tabla con las columnas

CREATE TABLE IF NOT EXISTS INSCRITOS(cantidad INT, fecha DATE, fuente
 VARCHAR);
 
--ingresamos los datos.
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 44, '01/01/2021', 'Blog' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 56, '01/01/2021', 'Página' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 39, '01/02/2021', 'Blog' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 81, '01/02/2021', 'Página' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 12, '01/03/2021', 'Blog' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 91, '01/03/2021', 'Página' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 48, '01/04/2021', 'Blog' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 45, '01/04/2021', 'Página' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 55, '01/05/2021', 'Blog' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 33, '01/05/2021', 'Página' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 18, '01/06/2021', 'Blog' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 12, '01/06/2021', 'Página' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 34, '01/07/2021', 'Blog' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 24, '01/07/2021', 'Página' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 83, '01/08/2021', 'Blog' );
 INSERT INTO INSCRITOS(cantidad, fecha, fuente)
 VALUES ( 99, '01/08/2021', 'Página' );
 
 --revisamos los datos en la tabla.
 select * from inscritos
 
 
 -- ¿Cuántos registros hay?
 select count(*)as cantidad_registros from inscritos;
 
 -- ¿Cuántos inscritos hay en total?
 select sum(cantidad) as cantidad_inscritos from inscritos;
 
 --¿Cuál o cuáles son los registros de mayor antigüedad?
 select * from inscritos where( select fecha < '01/08/2021')limit 1;
 
 --¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de ahora en adelante)
 select fecha, sum(cantidad) as total_inscritos from inscritos group by inscritos.fecha order by inscritos.fecha asc; 
 
 --¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?
 select fecha, sum(cantidad) from inscritos group by inscritos.fecha order by inscritos.fecha desc limit 1;
 
 
 
 
 