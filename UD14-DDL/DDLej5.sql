create database DDLej5;
use DDLej5;

create table almacenes (
Codigo int primary key,
Lugar nvarchar(100),
Capacidad int
);

create table cajas(
NumReferencia char(5) primary key,
contenido nvarchar(100),
valor int,
almacen int,
Constraint FK_almacen Foreign Key(almacen) references almacenes(Codigo)
);
