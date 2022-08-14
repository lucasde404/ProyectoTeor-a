create database peluqueriaev

use peluqueriaev

-- Tabla Dueno
create table Dueno (
DNI int not null,
Nombre varchar(30) not null,
Apellido varchar(40) not null,
Telefono varchar(15) not null,
Direccion varchar(50),
constraint pk_cd primary key (DNI))

-- Tabla Perro
create table Perro (
ID_Perro int not null,
Nombre varchar(20) not null,
Fecha_nac date not null,
Sexo varchar(10) not null,
DNI_dueno int not null,
constraint pk_cp primary key(ID_Perro),
constraint fk_fd foreign key (DNI_dueno) references Dueno (DNI))

-- Tabla Historial
create table Historial (
ID_Historial int not null,
Fecha date not null,
Perro int not null,
Descripcion varchar(50),
Monto int not null,
constraint pk_ch primary key (ID_Historial),
constraint fk_fp foreign key (Perro) references Perro (ID_Perro))

