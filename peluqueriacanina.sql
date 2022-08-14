create database peluqueriacanina;
use peluqueriacanina

create table dueno (
	DNI int not null,
    Nombre varchar(100) not null,
    Apellido varchar(100) not null,
    Telefono int not null,
    Dirección varchar(100) not null,
    primary key (DNI)
);
    
create table perro(
	ID_perro int not null auto_increment,
	Nombre varchar(100) not null,
	Fecha_nac date not null,
	Sexo varchar(100) not null,
	DNI_dueno int not null,
	primary key (ID_perro),
	foreign key (DNI_dueno) references dueno(DNI)
);
create table historial(
	ID_historial int not null auto_increment,
	Fecha date not null,
	Perro int not null,
	Descripción varchar(1000) not null,
	Monto float not null,
	primary key (ID_historial),
	foreign key (Perro) references perro(ID_perro)
);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Dirección) 
VALUES
 (30000000, "Maria" , "Gonzalez" , 24941110, "Belgrano 10"),
 (31000000, "Jose", "Ramos", 24941111, "Belgrano 11"),
 (32000000, "Juana", "Flora", 24941112,"Belgrano 12"),
 (33000000, "Pedro", "Lopez", 24941113, "Belgrano 13"),
 (34000000, "Lucas", "Martinez", 24941114, "Belgrano 14"),
 (35000000, "Alberto", "Silva", 24941115, "Belgrano 15"),
 (36000000, "Rocio", "Poli", 24941116, "Belgrano 16"),
 (37000000, "Valeria", "Sanchez", 24941117, "Belgrano 17"),
 (38000000, "Diego", "Rossi", 24941118, "Belgrano 18");
 
 INSERT INTO perro (Nombre, Fecha_nac, Sexo, DNI_dueno) 
VALUES 
  ("Ma", "2020-01-11", "Macho", 30000000),
  ("Jo", "2020-02-12", "Macho", 31000000),
  ("Jua", "2020-03-13", "Hembra", 32000000),
  ("Pe", "2020-04-14", "Hembra", 33000000),
  ("Luc", "2020-05-15", "Macho", 34000000),
  ("Beto", "2020-06-16", "Macho", 35000000),
  ("Ro", "2020-07-17", "Macho", 36000000),
  ("Vale", "2020-08-18", "Macho", 37000000),
  ("Die", "2020-09-19", "Macho", 38000000);
  
INSERT INTO historial (Fecha, Perro, Descripción, Monto)
VALUES 
  ("2021-08-01", 1,	"Vacuna", 1010.01),
  ("2021-09-02", 2,	"Vacuna", 1011.01),
  ("2021-10-03", 3,	"Vacuna", 1012.01),
  ("2021-11-04", 4,	"Vacuna", 1013.01),
  ("2021-12-05", 5,	"Vacuna", 1014.01),
  ("2022-01-06", 6,	"Vacuna", 1015.01),
  ("2022-02-07", 7,	"Vacuna", 1016.01),
  ("2022-03-08", 8,	"Vacuna", 1017.01),
  ("2022-04-09", 9,	"Vacuna", 1018.01);
  
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Dirección) 
VALUES
 (39000000, "Paloma" , "Montani" , 24941119, "Belgrano 19");
INSERT INTO perro (Nombre, Fecha_nac, Sexo, DNI_dueno) 
VALUES 
  ("Palo", "2020-10-20", "Hembra", 39000000);
INSERT INTO historial (Fecha, Perro, Descripción, Monto)
VALUES
("2022-08-14", 10,	"Vacuna", 1019.01);