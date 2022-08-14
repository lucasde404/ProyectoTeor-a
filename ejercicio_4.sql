# Cristian Nicolas Ortiz
# Ejercicio 4: Actualice la fecha de nacimiento de algún animal (perro) que usted considere.

create database peluqueria;

use peluqueria;

CREATE TABLE `peluqueria`.`dueno` (
  `DNI` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DNI`)
  );
  
CREATE TABLE `peluqueria`.`perro` (
  `ID_Perro` INT NOT NULL auto_increment,
  `nombre` VARCHAR(45) NOT NULL,
  `fecha_nac` DATETIME NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `DNI_Dueno` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  FOREIGN KEY (`DNI_Dueno`) REFERENCES `peluqueria`.`dueno` (`DNI`)
  ON DELETE CASCADE
  ON UPDATE CASCADE
    );
    
   

CREATE TABLE `peluqueria`.`historial` (
  `ID_Historial` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME NOT NULL,
  `Perro` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `monto` INT NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  FOREIGN KEY (`Perro`) REFERENCES `peluqueria`.`perro` (`ID_Perro`)
  ON DELETE CASCADE
  ON UPDATE CASCADE
    );

show tables;

INSERT INTO dueno (DNI,nombre,apellido,telefono,direccion) VALUES
	(28957346,  "Juan",  "Perez", "4789689",  "Belgrano 101"),
	(23546987,  "Maria",  "Perez", "4789689",  "Pueyrredon  811");
  
select * from dueno;

INSERT INTO perro (nombre, fecha_nac, sexo, DNI_Dueno) VALUES
	("Puppy" , "2012-12-12", "macho", 28957346 ),
    ("Fido", "2012-12-12" , "macho", 23546987);
    
select * from perro;

INSERT INTO historial (fecha, Perro, descripcion, monto) VALUES
	("2022-01-12", 2, "cortar pelo y bañar", 150),
	("2022-01-12", 1, "cortar pelo", 75 );

select * from historial;

# Ejercicio 4: Actualice la fecha de nacimiento de algún animal (perro) que usted considere.

UPDATE perro SET fecha_nac="2012-12-13" WHERE DNI_Dueno=28957346;

select * from perro;