CREATE TABLE if not exists cientificos (
DNI varchar(8) primary key,
nombreApels nvarchar(255)
);

CREATE TABLE if not exists proyecto (
id char(4) primary key,
nombre nvarchar(255),
horas int
);

CREATE TABLE if not exists asignado_a (
dni varchar(8),
id char(4),
CONSTRAINT FK_cientificos FOREIGN KEY (dni) REFERENCES cientificos(dni),
CONSTRAINT FK_proyecto FOREIGN KEY (id) REFERENCES proyecto(id)
);
