CREATE DATABASE IF NOT EXISTS DDLej4;
use DDLej4;

create table if not exists Departamentos (
	codigo int primary key auto_increment,
    nombre nvarchar(100),
    presupuesto int
);

CREATE TABLE if not exists Empleados (
	DNI varchar(8) primary key,
	nombre nvarchar(100),
    apellidos nvarchar(255),
    departamento int,
    constraint departamento foreign key (departamento) references Departamentos(codigo)
);

