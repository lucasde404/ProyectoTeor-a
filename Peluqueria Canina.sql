create database Peluqueria_Canina;
show databases;

use Peluqueria_Canina;

#Creación de la Tabla Dueño
create table Dueno(
	DNI int not null UNIQUE,  
    Nombre varchar (55),
    Apellido varchar (55),
    Telefono varchar (55),
    Direccion varchar (55),
    constraint pk_cd primary key (DNI)
);

#Creación de la Tabla Perro
create table Perro(
	Id_perro int auto_increment,
    Nombre varchar (55),
    Fecha_nac date,
    Sexo varchar (55),
    DNI_dueno int not null,
    constraint pk_cp primary key(Id_perro),
    constraint fk_fd foreign key (DNI_dueno) references Dueno (DNI)
);

#Creación de la Tabla Historial
create table Historial(
	Id_historial int not null,
    Fecha date,
    Perro varchar (55),
    Descripcion varchar (55),
    Monto int not null,
    constraint pk_ch primary key (Id_historial),
    constraint fk_fp foreign key (Perro) references Perro (Id_perro)
);

#Inserción de datos en la tabla Dueño
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
	values
    (28957346, "Juan", "Perez",  4789689, "Belgrano 101"),
    (23546987, "Maria", "Perez", 4789689, "Pueyrredon 811"),
    (34555639, "Ariel", "Torres", 5678964, "Belgrano 500"),
    (25879321, "Josefina", "Varela", 7896548, "Sarmiento 548"),
    (18963254, "Marianella", "Herrera", 7894563, "Maipu 122"),
    (23587456, "Mario", "Barrionuevo", 4789259, "Fuerzas Aereas 145");
    
#Inserción de datos en la tabla Perro
INSERT INTO Perro (Id_perro, Nombre, Fecha_nac, Sexo, DNI_dueno)
	values
    (13, "Pupy", "2012/12/13", "Hembra", 28957346),
    (14, "Fido", "2014/12/12", "Macho", 23546987),
    (15, "Lennon", "2016/10/16", "Macho", 34555639),
    (16, "Olivia", "2018/05/30", "Hembra", 25879321),
    (17, "Toto", "2022/02/24", "Macho", 18963254),
    (18, "Frida", "2022/03/03", "Hembra", 23587456);
    
INSERT INTO Historial (Id_historial, Fecha, Perro, Descripción, Monto)
	Values
    ("2021/12/20", 3, "Spa", 1500),
	("2022/02/15", 5, "Corte", 500),
	("2021/11/25", 2, "Operacion", 300),
	("2020/01/30", 4, "Spa", 450),
	("2022/05/14", 1, "Corte", 1000);

    
    select p.Nombre, d.Nombre
    from Perro p right join Dueno d on d.DNI = p.DNI_dueno
    where d.Nombre = "Maria"
    
    
    
    