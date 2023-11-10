-- Script realizado con MySQL Workbench

CREATE DATABASE IF NOT EXISTS ACTIVIDAD_GRUPO5;
USE ACTIVIDAD_GRUPO5;


/*
COMPROBAMOS SI ESTAN ACTIVADAS LAS RESTRICCIONES DE INTEGRIDAD
*/

select @@foreign_key_checks;

/*
DESACTIVAMOS LAS RESTRICIONES DE INEGRIDAD PARA PODER INSERTAR LAS CLAVES AJENAS
*/

SET FOREIGN_KEY_CHECKS=0;

/*
PROCEDEMOS A CREAR LAS TABLAS DE LA BASE DE DATOS CON 
LA SENTENCIA CREATE TABLE
*/

-- TABLA CENTROS

CREATE TABLE `CENTROS`(
`NUMCE` int(4) NOT NULL,
`NOMCE` VARCHAR(25),
`DIRCE` VARCHAR (25)
);

-- TABLA DEPARTAMENTOS

CREATE TABLE `DEPARTAMENTOS`(
`NUMDE` int (3) NOT NULL,
`NUMCE` int(4),
`DIREC` INT(3),
`TIDIR` CHAR(1),
`PRESU` DECIMAL (3,1),
`DEPDE` INT(3),
`NOMDE`VARCHAR (20)
);

-- TABLA EMPLEADOS

CREATE TABLE `EMPLEADOS`(
`NUMEM` INT(3) NOT NULL,
`EXTEL` INT(3),
`FECNA` DATE,
`FECIN` DATE,
`SALAR` INT(5),
`COMIS` INT(3),
`NUMHI` INT(1),
`NOMEM` VARCHAR(10),
`NUMDE` INT (3)
);


-- 1 INSENTAR LOS SIGUIENTES DATOS EN LA TABLA DEPARTAMENTO

/* INTERGER EN DESUSO Y SE ELIMINARA EN UN FUTURO, EL PROGRAMA TE AVISA QUE HABRA DATOS QUE EN FUTURO SE DEJARAN DE USAR,
   PRIMERO CREAMOS LAS TABLAS VACIAS Y DESPUES INSERTAMOS LOS DATOS CON LA CLAUSULA INSERT INTO LOS VALORES.
   EN ESTE CASO AUNQUE NO LO INDICA VAMOS A INTRUDUCCIR LOS DATOS MEDIANTE UN BULK INSERT, PARA AHOTTARNOS LA SENTENCIA N VECES
   Y LOS NOMBRES DE LAS COLUMNAS DE LA TABLA.
*/

INSERT INTO `DEPARTAMENTOS` (`NUMDE`,`NUMCE`,`DIREC`,`TIDIR`,`PRESU`,`DEPDE`,`NOMDE`) VALUES
('100','10','260','P','72',NULL,'DIRECCION GENERAL'),
('110','20','180','P','90','100','DIRECC. COMERCIAL'),
('111','20','180','F','66','110','SECTOR INDUSTRIAL'),
('112','20','270','P','54','110','SECTOR SERVICIOS'),
('120','10','150','F','18','100','ORGANIZACION'),
('121','10','150','P','12','120','PERSONAL'),
('122','10','350','P','36','120','PROCESO DE DATOS'),
('130','10','310','P','12','100','FINANZAS');

/*
 1. INSENTAR LOS DATOS EN LA TABLA  CENTROS (SI USASEMOS UN BULK INSERT, SOLO MEDIANTE UNA SENTENCIA PODRÍAMOS 
	POBLAR LA TABLA DE UNA MANERA MAS RÁPIDA
    */

INSERT INTO `CENTROS`(`NUMCE`,`NOMCE`,`DIRCE`) VALUES
('10','SEDE CENTRAL','C/ATOCHA, 820, MADRID');

INSERT INTO `CENTROS`(`NUMCE`,`NOMCE`,`DIRCE`) VALUES
('20','RELACION CON CLIENTES','C/ATOCHA, 405, MADRID');


-- 1. INSERTAR LOS DATOS DE LA TABLA EMPLEADOS POR MEDIO DE UN BULK INSERT.

INSERT INTO EMPLEADOS (NUMEM,EXTEL,FECNA,FECIN,SALAR,COMIS,NUMHI,NOMEM,NUMDE) VALUES
('110','350','1970-11-10','1985-02-15','1800', NULL,'3','CESAR','121'),
('120','840','1968-06-09','1988-10-01','1900','110','1','MARIO','112'),
('130','810','1965-09-09','1981-02-01','1500','110','2','LUCIANO','112'),
('150','340','1972-08-10','1997-01-15','2600',NULL,'0','JULIO','121'),
('16','740','1980-07-09','2005-11-11','1800','110','2','AUREO','111'),
('180','508','1974-10-18','1996-03-18','2800','50','2','MARCOS','110'),
('190','350','1972-05-12','1992-02-11','1750', NULL,'4','JULIANA','121'),
('210','200','1970-09-28','1999-01-22','1910',NULL,'2','PILAR','100'),
('240','760','1967-02-26','1989-02-24','1700','100','3','LAVINIA','111'),
('250','250','1976-10-27','1997-03-01','2700',NULL,'0','ADRIANA','100'),
('260','220','1973-12-03','2001-07-12','720',NULL ,'6', 'ANTONIO', '100'),
('270', '800', '1975-05-21' ,'2003-09-10' ,'1910', '80' ,'3', 'OCTAVIO' ,'112'),
('280', '410' ,'1978-01-10', '2010-10-08' ,'1500', NULL ,'5' ,'DOROTEA', '130'),
('285', '620', '1979-10-25', '2011-02-15', '1910', NULL ,'0', 'OTILIA', '122'),
('290', '910', '1967-11-30' ,'1988-02-14', '1790', NULL, '3' ,'GLORIA' ,'120'),
('310', '480' ,'1976-11-21', '2001-01-15', '1950' ,NULL,'0', 'AUGUSTO', '130'),
('320' ,'620', '1977-12-25', '2003-02-05', '2400' ,NULL ,'2','CORNELIO' ,'122'),
('330','850' ,'1958-08-19', '1980-03-01' ,'1700' ,'90' ,'0', 'AMELIA' ,'112'),
('350' ,'610', '1979-04-13', '1999-09-10' ,'2700' ,NULL, '1' ,'AURELIO', '122'),
('360' ,'750', '1978-10-29', '1998-10-10', '1800' ,'100' ,'2', 'DORINDA', '111'),
('370', '360' ,'1977-06-22', '2000-01-20', '1860',NULL ,'1', 'FABIOLA', '121'),
('380', '880' ,'1978-03-30' ,'1999-01-01' ,'1100', NULL, '0' ,'MICAELA' ,'112'),
('390' ,'500', '1976-02-19', '2010-10-08' ,'1290' ,NULL, '1' ,'CARMEN', '110'),
('400', '780', '1979-08-18' ,'2011-11-01' ,'1150' ,NULL ,'0', 'LUCRECIA' ,'111'),
('410', '660' ,'1968-07-14' ,'1989-10-13' ,'1010' ,NULL ,'0', 'AZUCENA' ,'122'),
('420' ,'450', '1966-10-22' ,'1988-11-19' ,'2400', NULL ,'0', 'CLAUDIA', '130'),
('430', '650' ,'1967-10-26', '1988-11-19', '1260' ,NULL ,'1' ,'VALERIANA' ,'122'),
('440' ,'760', '1966-09-26' ,'1986-02-28', '1260' ,'100', '0' ,'LIVIA' ,'111'),
('450', '880' ,'1966-10-21', '1986-2-28' ,'1260' ,'100', '0' ,'SABINA', '112'),
('480', '760', '1965-04-04', '1986-02-28' ,'1260', '100' ,'1', 'DIANA' ,'111'),
('490' ,'880', '1964-06-06' ,'1988-01-01', '1090', '100', '0' ,'HORACIO' ,'112'),
('500', '750', '1965-10-08', '1987-01-01' ,'1200', '100', '0','HONORIA','111'),
('510', '550' ,'1966-05-04', '1986-11-01', '1200', NULL ,'1' ,'ROMULO' ,'110'),
('550' ,'780' ,'1970/01/10', '1998-01-21', '600','120' ,'0' ,'SANCHO', '111');


/*
CREAMOS INDICES PARA LAS TABLAS, Y LAS LLAVES
*/

ALTER TABLE DEPARTAMENTOS
  ADD PRIMARY KEY (`NUMDE`),
  ADD KEY `NUMCE` (`NUMCE`),
  ADD KEY `DEPDE` (`DEPDE`);

ALTER TABLE CENTROS
  ADD PRIMARY KEY (`NUMCE`);
  
ALTER TABLE EMPLEADOS
	ADD PRIMARY KEY (`NUMEM`),
    ADD KEY `NUMDE`(`NUMDE`);

/*
INSERTAMOS INDICES PARA AGILIZAR LAS BUSQUEDAS EN CADA UNA DE LAS TABLAS 
A PARTE DE LOS INDICES YA CREADOS POR DEFECTO EN MySQL AL AÑADIR LAS CLAVES PRIMARIAS
*/

CREATE INDEX CENTROS ON CENTROS (`NOMCE`);

/*
 EN ESTE CASO CREAMOS UN INDICE EN NOMEN = NOMBRE DE LOS EMPLEADOS, 
 PARA AGILIZAR LAS BUSQUEDAS QUE NOS PIDEN 
*/
CREATE INDEX EMPLEADOS ON EMPLEADOS (`NOMEM`);

-- AÑADIMOS LA RESTRICCIONES DE INTEGRIDAD REFERENCIAL EN LAS TABLAS

/* 
PARA LA TABLA DEPARTAMENTOS RELACIONADA CON LA TABLA CENTROS
PONEMOS EL ON DELETE NO ACTION PARA QUE SI BORRAMOS O CAMBIAMOS ALGO NO REPERCUTA EN LAS CLAVES 
*/

ALTER TABLE `DEPARTAMENTOS`
  ADD CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`NUMCE`) REFERENCES `CENTROS` (`NUMCE`) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- SEGUNDA CLAVE FORANEA DE LA TABLA EN ESTE CASO `DEPDE`

ALTER TABLE `DEPARTAMENTOS`
	ADD CONSTRAINT `departamentos_ibfk_2` FOREIGN KEY (`DEPDE`) REFERENCES `DEPARTAMENTOS`(`NUMDE`) ON DELETE NO ACTION ON UPDATE NO ACTION;
    
    
-- RESTRICCI-- RESTRICCIONES TABLA EMPLEADOS

ALTER TABLE `EMPLEADOS`
	ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`NUMDE`) REFERENCES `DEPARTAMENTOS` (`NUMDE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*
A CONTINUACION VOLVEMOS A ACTIVAR LAS RESTRCCIONES DE INTEGRIDAD, PARA MANTENER 
LA INTEGRIDAD REFERENCIAL EN LAS TABLAS.
*/

SET FOREIGN_KEY_CHECKS=1;
COMMIT;
 
 -- AÑADIMOS LA SENTENCIA COMMMIT PARA QUE LOS CAMBIOS SEAN IRREVOCABLES.
 
 -- ------------------------------------------------------------------------------------------------------------
 -- CONSULTAS --
 
 /*
	1.Para cada departamento con presupuesto inferior a 35.000 €, hallar le nombre del Centro donde está ubicado 
	  y el máximo salario de sus empleados (si dicho máximo excede de 1.500 €). 
	  Clasificar alfabéticamente por nombre de departamento.
 */
 
 SELECT d.nomde as 'Departamento', c.nomce as 'Nombre Centro', max(e.salar) as 'Salario Máximo'
	FROM CENTROS c, EMPLEADOS e, DEPARTAMENTOS d
	WHERE (d.numce = c.numce) AND (d.numde = e.numde) AND (d.presu < 35) AND (e.salar > 1500)
	GROUP BY d.numde
	ORDER BY d.nomde asc;
    
 /*
	2.Hallar por orden alfabético los nombres de los departamentos que dependen de los que tienen un presupuesto inferior a 30.000 €.
      También queremos conocer el nombre del departamento del que dependen y su presupuesto.
*/
 
SELECT d.nomde as 'Departamento', j.nomde as 'Depende de', j.presu as 'Presupuesto del que dependen'
	FROM DEPARTAMENTOS d, DEPARTAMENTOS j
	WHERE (d.depde = j.numde) AND (j.presu < 30)
	ORDER BY d.nomde ASC;
 
 /*
	3.Obtener los nombres y los salarios medios de los departamentos cuyo salario medio supera al salario medio de la empresa.
 */
 

SELECT departamentos.nomde, format(avg(empleados.salar),2) as media_salarios
	FROM departamentos, empleados
	WHERE departamentos.numde = empleados.numde 
	GROUP BY departamentos.nomde 
	HAVING avg(empleados.salar) > (select avg(salar) from empleados);
 
 
 /*
	4.Para los departamentos cuyo director lo sea en funciones,
	  hallar el número de empleados y la suma de sus salarios, comisiones y número de hijos.
*/


SELECT departamentos.nomde, count(empleados.numem) as numero_empleados, sum(empleados.salar) as suma_salarios,
				sum(empleados.comis) as suma_comisiones, sum(empleados.numhi) as suma_hijos
	FROM departamentos, empleados
	WHERE departamentos.numde = empleados.numde and departamentos.tidir like 'F'
	GROUP BY departamentos.nomde;

--
--	5.Para los departamentos cuyo presupuesto anual supera los 35.000 €, hallar cuantos empleados hay por cada extensión telefónica.
--


SELECT departamentos.nomde, departamentos.presu, count(empleados.numem) as numero_empleados, empleados.extel
	FROM departamentos, empleados
	WHERE departamentos.numde = empleados.numde AND departamentos.presu > 35000
	GROUP BY empleados.extel;
    
/*
	6.Hallar por orden alfabético los nombres de los empleados y su número
      de hijos para aquellos que son directores en funciones.
*/

SELECT   empleados.nomem AS Nombre_Empleados, empleados.numhi AS nº_Hijos
	FROM empleados
    JOIN departamentos ON empleados.numde = departamentos.numde 
    WHERE departamentos.tidir='F'
	ORDER BY empleados.nomem asc;


/*
	7.Hallar si hay algún departamento (suponemos que sería de reciente creación)
      que aún no tenga empleados asignados ni director en propiedad.
*/

SELECT departamentos.nomde, count(empleados.numem) as numero_empleados, departamentos.tidir
	FROM departamentos, empleados
	WHERE departamentos.numde = empleados.numde and departamentos.tidir like 'F'
	GROUP BY empleados.numem
	HAVING count(empleados.numem) = 0;

/*
	8.Añadir un nuevo departamento de nombre NUEVO y con director en funciones.
     Añadimos tambien el dato 'Numde', ya que al ser primery key, no puede ser nulo
*/

INSERT INTO `DEPARTAMENTOS` (`NUMDE`,`NUMCE`,`DIREC`,`TIDIR`,`PRESU`,`DEPDE`,`NOMDE`) 
	VALUES
		('550',NULL,NULL,'F',NULL,NULL,'NUEVO');


/*
	9.Añadir un nuevo empleado de nombre NORBERTO y sin departamento asignado. 
      Inventar el resto de datos.
*/
INSERT INTO `EMPLEADOS` (`NUMEM`,`EXTEL`,`FECNA`,`FECIN`,`SALAR`,`COMIS`,`NUMHI`,`NOMEM`,`NUMDE`) 
	VALUES
		('598','350','1958-10-12','1990-02-11','3800', NULL,'3','NORBERTO',null);

/*
	10. Muestra los departamentos que no tienen empleados.
*/

SELECT empleados.numde as Empleados, departamentos.nomde as Nombre_dpto
	FROM empleados, departamentos
	WHERE departamentos.numde ='550' AND empleados.numde is null; 

/*
	11.Muestra los nombres de departamentos que no tienen empleados haciendo uso la combinación externa LEFT JOIN. 
       Muestra una segunda columna con los nombres de empleados para asegurarnos que realmente está a NULL.    
*/

SELECT DISTINCT departamentos.nomde as Nombre_Dpto, empleados.nomem as Nombre_empleados
	FROM departamentos 
    LEFT JOIN empleados ON departamentos.numde = empleados.numde
	WHERE empleados.numde is null;


 /*
	12.Muestra los nombres de departamentos que no tienen empleados haciendo uso la combinación externa RIGH JOIN. 
	   Muestra una segunda columna con los nombres de empleados para asegurarnos que realmente está a NULL. 
*/

SELECT DISTINCT departamentos.nomde as Nombre_dpto, empleados.nomem as Nombre_empleados
	FROM empleados 
    RIGHT JOIN departamentos ON departamentos.numde = empleados.numde -- cambiamos las tablas de posicion 
	WHERE empleados.numde is null;


/*
	13.Muestra los nombres de empleados que no tienen departamento haciendo uso la combinación externa LEFT JOIN. 
       Muestra una segunda columna con los nombres de departamentos para asegurarnos que realmente esta a NULL.
*/

SELECT empleados.nomem as nombre_empelados, departamentos.nomde as nombre_departamento
	FROM empleados 
    LEFT JOIN departamentos ON empleados.numde = departamentos.numde
	WHERE empleados.nomem is not null and departamentos.nomde is null;


/*
	14.Muestra los nombres de empleados que no tienen departamento haciendo uso la combinación externa RIGHT JOIN. 
	   Muestra una segunda columna con los nombres de empleados para asegurarnos que realmente esta a NULL.
*/

select empleados.nomem as Nombre_Empleados, departamentos.nomde 
	from departamentos
    right join empleados on  empleados.numde = departamentos.numde
	where departamentos.numde is null;


/*
	15.Muestra los departamentos que no tienen empleados y los empleados que no tiene departamento 
       haciendo uso la combinación externa FULL JOIN. -- no lo traga Mysql (SIMULAMOS)
*/

select departamentos.nomde as departamentos
	from departamentos
	left join empleados on (departamentos.numde = empleados.numde)
	where departamentos.numde is not null
union 
	select empleados.nomem as empleados
		from empleados
		right join departamentos on (departamentos.numde = empleados.numde)
		where empleados.numde is null;


/*
	16.Muestra los empleados y sus respectivos departamentos haciendo uso de la combinación interna INNER JOIN. 
       ¿Aparecen el departamento NUEVO y el empleado NORBERTO?¿Por qué?
*/
select empleados.nomem as Nombre_Empleados, departamentos.nomde 
	from empleados 
    inner join departamentos on empleados.numde = departamentos.numde;

/*
El departamento nuevo no aparece y norberto tampoco. el inner join devuelve las filas de varias
tablas donde se cumple la condicion de union. por tanto, norberto no pertenence a ningun departamento o 
no tiene ningun departamento por tanto no cumple la condicion y con departamento nuevo ocurre lo mismo.
no tiene ningun empleado asignado por lo tanto no sale en la consulta.alter
*/

/*
	17.Realiza la misma consulta anterior donde se cumpla la condición que NUMDE está a NULL. 
*/

select  empleados.nomem as Nombre_Empleados, departamentos.nomde 
	from empleados 
    inner join departamentos on empleados.numde = departamentos.numde
	where empleados.numde is null;

/* ¿Aparece algún resultado?¿Por qué?
No, porque en los datos que están relacionados entre ambas tablas comparten no existe ningun registro cuyo número de departamento sea null
ya que Norberto, como no tiene asociado numde, no está relacionado con la tabla departamentos y no se incluye en el inner join.
*/

/*
	18.Muestra los empleados y sus respectivos departamentos haciendo uso de la combinación interna NATURAL JOIN.
*/

select empleados.nomem, empleados.numde, departamentos.nomde from empleados
	left join departamentos on empleados.numde = departamentos.numde
union
	select empleados.nomem, empleados.numde, departamentos.nomde from empleados
		right join departamentos on empleados.numde = departamentos.numde;

/*	
	19.Muestra la combinación de las 3 tablas CENTROS, DEPARTAMENTOS y EMPLEADOS haciendo uso de NATURAL JOIN.
*/
select * 
	from centros
	join departamentos on centros.numce = departamentos.numce
	join empleados on empleados.numde = departamentos.numde;

/*
	20.Borra los registros dados de alta para el departamento NUEVO y el empleado introducido en el apartado anterior.
*/

DELETE FROM empleados WHERE nomem = 'NORBERTO';

DELETE FROM departamentos WHERE nomde='NUEVO';
    