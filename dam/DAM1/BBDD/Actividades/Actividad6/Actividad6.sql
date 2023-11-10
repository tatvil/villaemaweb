-- Este script está desarrollado para MySQL.
-- Primero creamos la base de datos y comenzamos a trabajar con ella.
CREATE DATABASE IF NOT EXISTS GRUPO05_AD6;
USE GRUPO05_AD6;

-- 1. Escribimos las sentencias SQL correspondientes para crear las tablas en MySQL, 
-- teniendo en cuenta las restricciones dadas y las claves.
CREATE TABLE `visitantes` (
  `DNI` varchar(9) NOT NULL,
  `nombre` varchar(25),
  `domicilio` varchar(50),
  `profesion` varchar(25),
  PRIMARY KEY (`DNI`));
  
  CREATE TABLE `excursion` (
  `CodExcursion` int NOT NULL,
  `fecha` date,
  `hora` time,
  `apie` varchar(2),
  `codAlojamiento` int(9),
  PRIMARY KEY (`CodExcursion`));
  
  CREATE TABLE `comunidadAutonoma` (
  `CodCA` int NOT NULL,
  `nombre` varchar(25),
  `OrgResponsable` varchar(25),
  PRIMARY KEY (`CodCA`));
  
  CREATE TABLE `parqueNatural` (
  `CodPN` int NOT NULL,
  `nombre` varchar(50),
  `FechaDeclaracion` DATE,
  PRIMARY KEY (`CodPN`));
  
CREATE TABLE `entrada` (
  `CodEntrada` int NOT NULL,
  `codPN` int,
  PRIMARY KEY (`CodEntrada`));
  
CREATE TABLE `especie` (
  `CodEspecie` int NOT NULL,
  `nombreCientifico` varchar (25),
  `nombreVulgar` varchar (25),
  PRIMARY KEY (`CodEspecie`));
  
CREATE TABLE `animal` (
  `CodEspecie` int NOT NULL,
  `alimentacion` varchar (25),
  `periodoCelo` varchar (25),
  PRIMARY KEY (`CodEspecie`));
  
CREATE TABLE `vegetal` (
  `CodEspecie` int NOT NULL,
  `floracion` varchar(25),
  `PeriodoFloracion` varchar (25),
  PRIMARY KEY (`CodEspecie`));
  
  CREATE TABLE `mineral` (
  `CodEspecie` int NOT NULL,
  `tipo` varchar(25),
  PRIMARY KEY (`CodEspecie`));
  
  CREATE TABLE `area` (
  `NombreA` varchar (25) NOT NULL,
  `extension` int,
  `codPN` int,
  PRIMARY KEY (`NombreA`));
  
CREATE TABLE `vehiculo` (
  `matricula` varchar(8) NOT NULL,
  `tipo` varchar(25),
  `DNI` varchar (9),
  PRIMARY KEY (`matricula`));
  
CREATE TABLE `proyecto` (
  `CodProy` int NOT NULL,
  `presupuesto` int,
  `fechainicio` datetime,
  `fechafin` datetime,
  `CodEspecie` int,
  PRIMARY KEY (`CodProy`));

CREATE TABLE alojamiento (
	codAlojamiento int,
    categoria varchar(20),
    capacidad int,
    CodPN int,
    PRIMARY KEY (codAlojamiento));
  
CREATE TABLE personal (
	DNI varchar(10),
    NSS varchar(20) UNIQUE,
    nombre VARCHAR (50),
    direccion varchar (100),
    TfnoDomicilio varchar(12),
    TlfnoMovil varchar(12),
    Sueldo float(6,2),
    CodPN int,
	PRIMARY KEY (DNI));
    
CREATE TABLE conservador (
	DNI varchar (10),
    Tarea varchar (20),
    NombreA varchar (25),
    PRIMARY KEY (DNI));

CREATE TABLE Vigilante (
	DNI varchar (10),
    NombreA varchar (25),
    PRIMARY KEY (DNI));
    
CREATE TABLE investigador (
	DNI varchar(10),
    Titulacion varchar (30),
    PRIMARY KEY (DNI));
    
CREATE TABLE gestor (
	DNI varchar(10),
    CodEntrada int,
	PRIMARY KEY (DNI));

-- Tablas renacidas

CREATE TABLE ca_pn (
	codCA int,
    codPN int,
    superficie int,
	PRIMARY KEY (codCA,codPN));
    
CREATE TABLE e_v (
	codExcursion int,
    DNI varchar(10),
	PRIMARY KEY (cod_excursion,DNI));
    
CREATE TABLE a_v (
	CodAlojamiento int,
    DNI varchar(10),
    fechaInicio date,
    fechaFin date,
	PRIMARY KEY (CodAlojamiento,DNI,FechaInicio));
    
CREATE TABLE e_a (
	codEspecie int,
    codArea varchar(25),
    cantIndividuos int,
    PRIMARY KEY (codEspecie,codArea));
    
CREATE TABLE i_p (
	codProy int,
    DNI varchar(10),
    PRIMARY KEY(codProy,DNI));
    
CREATE TABLE vigilante (
	DNI varchar(10),
    NombreA varchar (25),
    PRIMARY KEY (DNI));
    
--
-- Hasta aqui estan creadas todas las tablas. En algunas ocasiones me ha costado predecir
-- el tipo de dato que aplica a cada campo de la tabla. Quizas teniendo más datos sobre el funcionamiento de
-- los parques nacionales, se podría averiguar mejor.
-- 
-- Creando las Foreing Keys
--

ALTER TABLE e_v 
	Add foreign key (codExcursion) references excursion (codExcursion),
	Add foreign key (DNI) references visitantes (dni);
    
ALTER TABLE a_v
	add foreign key (codAlojamiento) references alojamiento (codAlojamiento),
    add foreign key (DNI) references visitantes(DNI);
    
ALTER TABLE alojamiento
	add foreign key (codPN) references ParqueNatural(CodPN);
    
ALTER TABLE excursion
	add foreign key (codAlojamiento) references Alojamiento(codAlojamiento);
    
ALTER TABLE CA_PN
	add foreign key (codCA) references ComunidadAutonoma(CodCA),
    add foreign key (codPN) references ParqueNatural(CodPN);
    
ALTER TABLE mineral
	add foreign key (codEspecie) references Especie (codEspecie);
    
ALTER TABLE vegetal
	add foreign key (codEspecie) references Especie (codEspecie);
    
ALTER TABLE animal
	add foreign key (codEspecie) references Especie (codEspecie);
    
ALTER TABLE e_a
	add foreign key (codEspecie) references Especie (codEspecie),
    add foreign key (codArea) references Area (NombreA);
    
ALTER TABLE conservador
	add foreign key (DNI) references Personal (DNI),
    add foreign key (nombreA) references Area (nombreA);
    
ALTER TABLE Area
	add foreign key (codPN) references ParqueNatural (codPN);
    
ALTER TABLE Personal
	add foreign key (codPN) references ParqueNatural (codPN);

ALTER TABLE Entrada
	add foreign key (codPN) references ParqueNatural (codPN);

ALTER TABLE vehiculo
	add foreign key (DNI) references Vigilante (DNI);
    
ALTER TABLE vigilante
	add foreign key (DNI) references Personal (DNI),
    add foreign key (NombreA) references Area (NombreA);
    
ALTER TABLE investigador
	add foreign key (DNI) references Personal (DNI);

ALTER TABLE gestor
	add foreign key (DNI) references Personal (DNI),
    add foreign key (codEntrada) references Entrada(codEntrada);

ALTER TABLE i_p
	add foreign key (DNI) references Investigador (DNI),
    add foreign key (codProy) references Proyecto (codProy);

ALTER TABLE proyecto
    add foreign key (codEspecie) references Especie(codEspecie);

--
-- Poblando las tablas
--

INSERT INTO ParqueNatural (CodPN,nombre,FechaDeclaracion)
	VALUES
		(1,"Doñana","1969-10-16"),
        (2,"Monfragüe","2007-03-02"),
        (3,"Teide","1954-01-22"),
		(4,"Picos de Europa","1918-07-24"),
        (5,"Garajonay","1981-03-25"),
        (6,"Ordesa y Monte Perdido","1918-08-16"),
        (7,"Sierra de Guadarrama","2013-6-25"),
        (8,"Sierra Nevada","1999-01-11"),
        (9,"Timanfaya","1974-08-09"),
        (10,"Cabañeros","1995-11-20"),
        (11,"Islas Atlanticas de Galicia","2002-07-01"),
        (12,"Tablas de Daimiel","1874-06-28"),
        (13,"Aigues Tortes i Estany de Saint Maurici","1955-10-21"),
        (14,"Caldera de Taburiente","1954-10-06"),
        (15,"Sierra de las Nieves","2021-07-01");
        
INSERT INTO Visitantes (DNI,nombre,domicilio,profesion)
	VALUES
		("12345678T","Tatiana Villa Ema","C/ Camino Perales, 1 Las Rozas","Agente inmobiliario"),
        ("12345678A","Alvaro Tercero","C/ Princesa, 1 Madrid","Gerente comercial"),
        ("12345678E","Elvira","C/ Alberto Aguilera, 1 Madrid","Jefa de tienda"),
        ("12345678M","Maria Moreno","C/ Marques de Urquijo, 1 Madrid","Farmaceutica");
        
 INSERT INTO Visitantes (DNI,nombre,domicilio,profesion)
	VALUES
		("12345678T","Tatiana Villa Ema","C/ Camino Perales, 1 Las Rozas","Agente inmobiliario"),
        ("12345678A","Alvaro Tercero","C/ Princesa, 1 Madrid","Gerente comercial"),
        ("12345678E","Elvira","C/ Alberto Aguilera, 1 Madrid","Jefa de tienda"),
        ("12345678M","Maria Moreno","C/ Marques de Urquijo, 1 Madrid","Farmaceutica");

INSERT INTO alojamiento (codAlojamiento,categoria,capacidad,codPN)
	VALUES
		(1,"casa rural",5,1),
		(2,"Hotel",25,2),
        (3,"casa rural",5,2);
    
INSERT INTO excursion (codExcursion,fecha,hora,aPie,codAlojamiento)
	VALUES
		(1,"2023-03-01","10:00","si",1),
        (2,"2023-02-01","11:00","no",1),
        (3,"2023-03-01","10:00","si",2),
        (4,"2018-03-01","9:00","si",3);

INSERT INTO E_V (codExcursion,DNI)
	VALUES
		(1,"12345678T"),
        (2,"12345678T"),
        (2,"12345678E"),
        (1,"12345678A");
        
CREATE VIEW vista 
	AS SELECT v.DNI, e.fecha
			FROM excursion as e
            JOIN e_v AS v ON v.codexcursion=e.codexcursion
            WHERE e.aPie="si";

SELECT * FROM vista;
