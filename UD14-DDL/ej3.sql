CREATE TABLE if not exists fabricantes (
codigo int primary key auto_increment,
nombre nvarchar(100)
);

CREATE TABLE if not exists articulos (
codigo int primary key auto_increment,
nombre nvarchar(100),
precio int,
codigo_fk int,
CONSTRAINT FK_fabricantes FOREIGN KEY (codigo_fk) REFERENCES fabricantes (codigo)
);