CREATE DATABASE IF NOT EXISTS DDLej7;
use DDLej7;

create table if not exists Despachos (
	numero int primary key auto_increment,
    capacidad int
);

CREATE TABLE if not exists Directores (
	DNI varchar(8) primary key,
	nomApels nvarchar(255),
    DNIJefe varchar(8),
    despacho int,
    constraint DNIJefe foreign key (DNIJefe) references Directores(DNI),
    constraint despacho foreign key (despacho) references Despachos(numero)
);

