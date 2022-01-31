create database DDLej2;
use DDLej2;

create table Editorial(
ClaveEditorial smallint primary key,
Nombre varchar(60),
Direccion varchar(60),
Telefono varchar(15)
);

create table Libro(
Clavelibro int primary key,
Titulo varchar(60),
Idioma varchar(15),
Formato varchar(15),
ClaveEditorial smallint,
Constraint FK_Editorial Foreign Key(ClaveEditorial) references Editorial(ClaveEditorial)
);

create table Tema(
ClaveTema smallint primary key,
Nombre varchar(40)
);

create table Autor (
ClaveAutor int primary key,
Nombre varchar(60)
);


create table Ejemplar(
ClaveEjemplar int primary key,
Clavelibro int,
NumeroOrden smallint,
Edicion smallint,
Ubicacion varchar(15),
Categoria char,

Constraint FK_Ejemplar Foreign Key(Clavelibro) references Libro(Clavelibro)
);

create table Socio(
ClaveSocio int primary key,
Nombre varchar(60),
Direccion varchar(60),
Telefono varchar(15),
Categoria char
);

create table Prestamo(
ClaveSocio int,
ClaveEjemplar int,
NumeroOrden smallint,
Fecha_prestamo date,
Fecha_devolucion date,
notas blob,

Constraint FK_Socio Foreign Key(ClaveSocio) references Socio(ClaveSocio),
Constraint FK_Ejemplar2 Foreign Key(ClaveEjemplar) references Ejemplar(ClaveEjemplar)
);

create table Trata_sobre(
Clavelibro int,
ClaveTema smallint,

Constraint FK_Libro Foreign Key(Clavelibro) references Libro(Clavelibro),
Constraint FK_ClaveTema Foreign Key(ClaveTema) references Tema(ClaveTema)

);

create table Escrito_por(
Clavelibro int,
ClaveAutor int,

Constraint FK_Libro2 Foreign Key(Clavelibro) references Libro(Clavelibro),
Constraint FK_Autor Foreign Key(ClaveAutor) references Autor(ClaveAutor)
);

