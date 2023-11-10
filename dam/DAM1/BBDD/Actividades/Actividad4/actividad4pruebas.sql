/* Una vez que hemos generado nuestra base de datos con el script proyectos.sql que os he dejado en las unidades formativas, vamos a seguir practicando con el lenguaje SQL. Para ello se pide que realices las siguientes sentencias SQL. */
use proyectos;
show tables;
/*    Se pide que muestres todos los datos introducidos en las tablas. Para ello deberías extraer las cuatro tablas incluidas con comandos de selección. */
SELECT * FROM asignacion;
SELECT * FROM departamentos;
SELECT * FROM empleados;
SELECT * FROM proyectos;

/*    Se necesita una lista de los proyectos (sólo indicando el nombre y la fecha de inicio) que empiezan a partir de Marzo. En la cabecera de la columna de la fecha debe de poner “Fecha de inicio del proyecto”. */
SELECT nombre,fecha_ini as "Fecha de inicio del proyecto"
FROM proyectos
WHERE fecha_ini > "2018-03-01" ;

/*    Se necesita un listado de todos los empleados que tengan el apellido López, como primero o segundo apellido */
SELECT *
FROM empleados
WHERE apellidos LIKE "%López%";

/*    Se pide que muestres el nombre del proyecto que tiene asignado el empleado “10480”, siguiendo estos pasos.
    Son dos sentencias SELECT: Primero averigua el número de de proyecto del empleado “10480” y luego cuando tengas el número de proyecto realizar la consulta sobre la tabla Proyectos. */
SELECT idproyecto
  FROM asignacion
  WHERE idempleado="10480";

SELECT nombre
  FROM proyectos
  WHERE idproyecto=3;
  
  /* ------> Tambien podria ser */
  SELECT nombre
    FROM proyectos
    JOIN asignacion ON proyectos.idproyecto=asignacion.idproyecto
    WHERE idempleado="10480";
  

/*    Sacar un listado de los empleados que sean de Madrid o Córdoba. Realiza el select de dos maneras posibles. */
SELECT *
  FROM empleados
  WHERE municipio='Madrid' OR municipio='Cordoba';
SELECT *
  FROM empleados
  WHERE municipio like '%Madrid%' OR municipio='%Cordoba%';

/*    Sacar un listado de los empleados que tengan un sueldo entre 1300 y 1550 Euros  */

SELECT *
  FROM empleados
  WHERE sueldo >= 1300 AND sueldo<= 1550;

/*    Ordena los empleados por fecha de nacimiento descendente y sólo los que hayan nacido después de 1976. */
SELECT *
  FROM empleados
  WHERE fecha_nac > "1976-01-01"
  ORDER BY fecha_nac DESC;

/*    Se ha detectado un error y es necesario sumar 5000 Euros al presupuesto del departamento de Marketing. 
Modifícalo sin tener que volver a insertar de nuevo el registro. */
SELECT *
  FROM departamentos
  WHERE nombre='Marketing';

UPDATE departamentos
  SET presupuestos=presupuestos+5000
  WHERE idpto=4;

/*    Se va a cambiar de proyecto a “Alberto Pérez López”. Modifícalo para que tenga asignado el proyecto “RUNTA”. */
SELECT *
  FROM empleados
  WHERE nombre="Alberto" AND Apellidos="Pérez López"; /* idempleado=10478 */

SELECT *
  FROM proyectos
  WHERE nombre="runta"; /* idproyecto=3 */

select *
from asignacion
    where idempleado=10478;

update asignacion
	SET idproyecto=3
    where idempleado=10478;
  
/*    Por motivos de logística “Antonio García Montero” ya no seguirá en el proyecto que tenía asignado y por lo tanto hay que 
      quitarle esa asignación.  Hazlo en dos pasos al igual que en la consulta 4. */

SELECT *
  FROM empleados
  WHERE nombre="Antonio" and apellidos="García Montero"; /* idempleado=10480 */

SELECT * 
  FROM asignacion
  WHERE idempleado=10480; /* comprobacion de las filas que existen */
  
DELETE FROM asignacion
  WHERE idempleado=10480;
  
/*    Sacar todos los empleados del departamento de Diseño y que ganen más de 1500 Euros. */

SELECT *
	FROM departamentos
    WHERE nombre="Diseño";  /* idpto=2 */

SELECT *
	FROM empleados
    WHERE idpto=2 AND sueldo>1500; /* comprobacion */

DELETE FROM empleados
	WHERE idpto=2 AND sueldo>1500;  /* No se puede borrar: Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`proyectos`.`departamentos`, CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`IDPTO`) REFERENCES `empleados` (`IDPTO`) ON DELETE NO ACTION ON UPDATE NO ACTION) */

/*    Incrementar en un 5% el sueldo de los empleados que pertenezcan al departamento de I+D y que ganen menos de 1400 Euros. */

SELECT *
	FROM departamentos
    WHERE nombre="I+D";  /* idpto=1 */

SELECT *
	FROM empleados
    WHERE idpto=1 AND sueldo<1400; /* idempleado=10480 y sueldo=1350 */

UPDATE empleados
	SET sueldo=sueldo+sueldo*.05
    WHERE idpto=1 AND sueldo<1400;

/* Una vez elaborado todas las sentencias súbelo a la plataforma para su evaluación. */

/* METODOLOGIA

    El alumno deberá estudiar los conceptos de las sentencias de SQL de selección y filtrado, elaboración de subconsultas, y funciones de manipulación de los datos.
    Se irán realizando los ejercicios consecutivamente, ya que el orden de dificultad ira creciendo. Todos los ejercicios se refieren a la utilización de la sentencia SELECT con sus diferentes variantes y funciones para filtrar los datos.
    Será recomendable que para cada sentencia introducida comprobar si el resultado es el esperado apoyándose para ello en la interfaz gráfica.
    Es recomendable que el alumno copie en un documento todas las sentencias que vaya ejecutando para elaborar posteriormente un documento que enviará al tutor para su evaluación.
*/

