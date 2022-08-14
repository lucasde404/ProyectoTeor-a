CREATE DATABASE PeluqueriaCanina;

USE PeluqueriaCanina;

CREATE TABLE Dueño(
DNI int not null,
Nombre varchar(45) not null,
Apellido varchar(45) not null,
Telefono int not null,
Direccion varchar(45) null,
CONSTRAINT pk_DNI PRIMARY KEY(DNI)
);

CREATE TABLE Perro(
ID_Perro int not null,
Nombre varchar(45) not null,
Fecha_nac date not null,
Sexo varchar(25) null,
DNI_dueño int,
CONSTRAINT pk_ID_Perro PRIMARY KEY(ID_Perro),  
CONSTRAINT fk_DNI_Dueño FOREIGN KEY (DNI_dueño) REFERENCES Dueño (DNI)
);


CREATE TABLE Historial(
ID_Historial int not null,
Fecha datetime not null,
Perro int not null,
Descripcion varchar(45) not null,
Monto int not null,
CONSTRAINT pk_ID_Historial PRIMARY KEY(ID_Historial),
CONSTRAINT fk_Perro FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro) 
);

INSERT INTO Dueño (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (28957346,  "Juan",  "Perez", 4789689,  "Belgrano 101"); 

INSERT INTO Dueño (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (23546987, "Maria", "Perez", 4789689, "Pueyrredon 811");

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_Dueño)
VALUES (13,  "Puppy",  "2022-12-12", "Macho", 28957346);

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_Dueño)
VALUES (14,  "Fido",  "2022-12-11", "Macho", 23546987);

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES (1, "2022-07-05", 13, "Baño", 2350);

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES (2, "2022-07-07", 13, "Comida", 5960);

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES (3, "2022-07-22", 13, "Guardaeria", 23000);

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES (4, "2022-07-27", 13, "Corte uñas", 1000);

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES (5, "2022-07-29", 13, "Otros", 8900);

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES (6, "2022-08-3", 14, "Guarderia", 23500);


SELECT * FROM Historial;

--7. Ejercicio de SQL pedido--

SELECT Monto FROM Historial WHERE Fecha between "2022-07-01" and "2022-07-31"; 
