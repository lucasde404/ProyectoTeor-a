use peluqueria_canina;

create table Dueno
(
DNI int,
Nombre varchar (25),
Apellido varchar (25),
Telefono bigint,
Direccion varchar (100),
primary key (DNI)
);

create table Perro
(
ID_Perro int,
 Nombre_P varchar (25),
 Fecha_n date,
 Sexo varchar (6),
 DNI_Dueno int,
 primary key (ID_Perro),
 foreign key (DNI_Dueno) references Dueno (DNI)
 );
 
 create table Historial 
 (
 ID_Historial int,
 Fecha_H date,
 Descripcion varchar (30),
 Monto int,
 ID_Perro1 int,
 primary key (ID_Historial),
 foreign key (ID_Perro1) references Perro (ID_Perro)
 );
 
 insert into Dueno values (42242361, 'Minerva', 'Lopez', 4713689, 'Los aromos 246');
insert into Perro values ( 7, 'Selena', 27/06/2018, 'Hembra', 42242361);

update Dueno set Direccion = 'Libertad 123' where Direccion = 'Los aromos 246';

update Dueno set Direccion = 'Libertad 123' where DNI = 42242361;

select * from Dueno