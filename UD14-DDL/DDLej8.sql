drop database DDLej8;
create database DDLej8;
use DDLej8;

create table piezas(
codigo int primary key auto_increment,
nombre nvarchar(100)
);

create table proveedores(
id char(4) primary key,
nombre nvarchar(100)
);

create table suministra(
CodigoPieza int auto_increment,
IdProveedor char(4),
Precio int,
PRIMARY KEY (CodigoPieza, IdProveedor),
Constraint FK_piezas Foreign Key(CodigoPieza) references piezas(codigo),
Constraint FK_proveedor Foreign Key(IdProveedor) references proveedores(id)
);