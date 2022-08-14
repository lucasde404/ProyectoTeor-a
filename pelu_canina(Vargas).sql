CREATE DATABASE pelu_canina;

USE pelu_canina;

CREATE TABLE dueno (
  dni int NOT NULL UNIQUE,
  nombre varchar(45) ,
  apellido varchar(45) ,
  telefono bigint ,
  dirección varchar(50) ,
  PRIMARY KEY(dni)
);

CREATE TABLE perro (
  id_perro int NOT NULL UNIQUE AUTO_INCREMENT,
  nombre varchar(45) ,
  fecha_nac DATE ,
  sexo varchar(25) ,
  dni_dueno int NOT NULL,
  FOREIGN KEY(dni_dueno) REFERENCES dueno(dni),
  CHECK (sexo IN ("Hembra","Macho"))
);

CREATE TABLE historial (
  id_historial int NOT NULL UNIQUE AUTO_INCREMENT,
  fecha DATE ,
  perro int NOT NULL,
  descripcion varchar(100) ,
  monto decimal(15,2) NOT NULL,
  FOREIGN KEY(perro) REFERENCES perro(id_perro)
);

INSERT INTO dueno (dni, nombre, apellido, telefono, dirección) 
VALUES
 (22572196, "Pedro" , "Perez" , 1723858962, "555 San Juan"),
 (17230272, "Gabriela", "Gonzalez", 2519599103, "266 Pueyrredon"),
 (57025451, "Ruben", "Fernandez", 3965984582,"151 Libertador"),
 (21527973, "Irene", "Barbieri", 7317298032, "123 Independencia"),
 (88691162, "Lorena", "Lopez",6214460147, "435 Mitre");

# Inserción de datos en la tabla perro
INSERT INTO perro (nombre, fecha_nac, sexo, dni_dueno) 
VALUES 
  ("Puppy", "2020-09-17", "Macho", 57025451),
  ("Fido", "2021-08-17", "Macho", 22572196),
  ("Ofelia", "2022-06-17", "Hembra", 21527973),
  ("Frida", "2019-12-27", "Hembra", 88691162),
  ("Toto", "2021-10-21", "Macho", 17230272);


INSERT INTO historial (fecha, perro, descripcion, monto)
VALUES 
  ("2020-07-11",	3,	"Spa", 872.84),
  ("2021-10-30",	5,	"Spa", 360.68),
  ("2022-08-09",	2,	"Spa", 639.16),
  ("2021-04-29",	4,	"Spa", 172.29),
  ("2022-03-14",	1,	"Spa", 947.10);

select fecha 
from historial
where fecha > "2021-12-31";






