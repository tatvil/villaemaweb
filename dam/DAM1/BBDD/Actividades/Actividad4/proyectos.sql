create DATABASE IF NOT EXISTS PROYECTOS;
USE PROYECTOS;
-- Desactivo restricciones de integridad para poder insertar en claves ajenas
SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE `EMPLEADOS` (
  `IDEMPLEADO` INT NOT NULL,
  `NOMBRE` varchar(25) NOT NULL,
  `APELLIDOS` varchar(25) NOT NULL,
   `Sexo` char (1),
  `MUNICIPIO` varchar(50) DEFAULT ' ',
  `FECHA_NAC` date NOT NULL,
  `SUELDO` int(11) NOT NULL,
  `IDPTO` INT NOT NULL
);


CREATE TABLE `DEPARTAMENTOS` (
  `IDPTO` INT NOT NULL,
  `NOMBRE` varchar(25) NOT NULL,
  `PRESUPUESTOS` INT NOT NULL CHECK(PRESUPUESTOS>5000)
);

CREATE TABLE `ASIGNACION` (
  `IDEMPLEADO`INT NOT NULL,
  `IDPROYECTO` INT NOT NULL
 
) ;

CREATE TABLE `PROYECTOS` (
  `IDPROYECTO` INT NOT NULL,
  `NOMBRE` varchar(25) UNIQUE,
  `FECHA_INI` date NOT NULL,
  `FECHA_FIN` date NOT NULL
);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `EMPLEADOS`
  ADD PRIMARY KEY (`IDEMPLEADO`),
  ADD KEY `IDEMPLEADO` (`IDEMPLEADO`),
  ADD KEY `IDPTO` (`IDPTO`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `DEPARTAMENTOS`
  ADD PRIMARY KEY (`IDPTO`);
--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `PROYECTOS`
  ADD PRIMARY KEY (`IDPROYECTO`);

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD KEY (`IDEMPLEADO`),
  ADD KEY (`IDPROYECTO`);

--
-- Restricciones para tablas volcadas
--
-- Creacción de índice
-- ALTER TABLE `Empleados` ADD INDEX(`Nombre`);
create index `Empleados` on `Empleados` (nombre);
--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`IDPTO`) REFERENCES `empleados` (`IDPTO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asignacion`
--
ALTER TABLE `asignacion`
   ADD CONSTRAINT `asignacion_ibfk_1` FOREIGN KEY ( `IDEMPLEADO` ) REFERENCES `EMPLEADOS` (`IDEMPLEADO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
   ADD CONSTRAINT `asignacion_ibfk_2` FOREIGN KEY ( `IDPROYECTO` ) REFERENCES `PROYECTOS` (`IDPROYECTO`) ON DELETE NO ACTION ON UPDATE NO ACTION;
;
-- Carga de datos
Insert into Departamentos (IDPTO,Nombre,Presupuestos)
values (1, 'I+D', 50000);
Insert into Departamentos (IDPTO,Nombre,Presupuestos)
values (2, 'Diseño', 25000);
Insert into Departamentos (IDPTO,Nombre,Presupuestos)
values (3, 'Ventas', 15000);
Insert into Departamentos (IDPTO,Nombre,Presupuestos)
values (4, 'Marketing', 10000);
Insert into Empleados (IDEMPLEADO,Nombre,Apellidos,Sexo,Fecha_nac,Sueldo,Municipio,IDPTO)
values (10478, 'Alberto', 'Pérez López', 'M', '1965-09-12', 1500, 'Madrid', 1);

Insert into Empleados (IDEMPLEADO,Nombre,Apellidos,Sexo,Fecha_nac,Sueldo,Municipio,IDPTO)
values (10479, 'Gloria', 'Ruiz Ruiz', 'F', '1968-06-12', 1650, 'Sevilla', 2);

Insert into Empleados (IDEMPLEADO,Nombre,Apellidos,Sexo,Fecha_nac,Sueldo,Municipio,IDPTO)
values (10480, 'Antonio', 'García Montero', 'M', '1969-10-12', 1350, 'Madrid', 1);

Insert into Empleados (IDEMPLEADO,Nombre,Apellidos,Sexo,Fecha_nac,Sueldo,Municipio,IDPTO)
values (10481, 'Ana', 'López Ramírez', 'F', '1970-05-12', 1250, 'Sevilla', 3);

Insert into Empleados (IDEMPLEADO,Nombre,Apellidos,Sexo,Fecha_nac,Sueldo,Municipio,IDPTO)
values (10482, 'Eduardo', 'Chicón Terrales', 'M', '1920-05-12', 1470, 'Córdoba', 2);

Insert into Proyectos (IDPROYECTO,Nombre,Fecha_ini,Fecha_fin)
values (1, 'SINUBE','2018-09-12', '2019-09-12');

Insert into Proyectos (IDPROYECTO,Nombre,Fecha_ini,Fecha_fin)
values (2, 'TRASPI', '2017-09-12', '2019-09-12');
        
Insert into Proyectos (IDPROYECTO,Nombre,Fecha_ini,Fecha_fin)
values (3, 'RUNTA','2016-09-12', '2019-09-12');

Insert into Proyectos (IDPROYECTO,Nombre,Fecha_ini,Fecha_fin)
values (4, 'CARTAL','2019-05-12', '2019-09-12');

-- Bulk insert 
Insert into Asignacion (IDEMPLEADO,IDPROYECTO)
values (10478, 1),
	   (10480, 3),
       (10481, 1),
       (10482, 2);
-- Activo restricciones de integridad para mantener integridad referencial
SET FOREIGN_KEY_CHECKS=1;
COMMIT;