create database DDLej11;
use DDLej11;

create table facultad(
codigo int primary key auto_increment,
nombre nvarchar(100)
);

create table Investigadores(
DNI varchar(8) primary key,
NomApels nvarchar(255),
Facultad int,
Constraint FK_facultad Foreign Key(Facultad) references facultad(codigo)
);

create table equipos(
NumSerie char(4) primary key,
Nombre nvarchar(100),
Facultad int,

Constraint FK_facultad2 Foreign Key(Facultad) references facultad(codigo)
);

create table reserva(
DNI varchar(8) primary key,
NumSerie char(4),
Comienzo datetime,
Fin datetime,
Constraint FK_Investigadores Foreign Key(DNI) references Investigadores(DNI),
Constraint FK_equipos Foreign Key(NumSerie) references equipos(NumSerie)
);