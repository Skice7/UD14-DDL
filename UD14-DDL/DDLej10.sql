CREATE DATABASE IF NOT EXISTS DDLej10;
use DDLej10;

create table if not exists Cajeros (
	idcajeros int primary key auto_increment,
    nomapels nvarchar(255)
);

create table if not exists Productos (
	idproductos int primary key auto_increment,
    nombre nvarchar(100),
    precio int
);

create table if not exists Maquinas_registradoras (
	idmaquina int primary key auto_increment,
    piso int
);

CREATE TABLE if not exists Venta (
	idcajero int,
	idproducto int,
    idmaquina int,
    primary key(idcajero, idproducto, idmaquina),
    constraint idcajero foreign key (idcajero) references Cajeros(idcajeros),
    constraint idproducto foreign key (idproducto) references Productos(idproductos),
    constraint idmaquina foreign key (idmaquina) references Maquinas_registradoras(idmaquina)
);