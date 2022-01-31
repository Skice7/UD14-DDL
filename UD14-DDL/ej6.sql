CREATE TABLE if not exists peliculas (
codigo int primary key auto_increment,
nombre nvarchar(100),
CalificacionEdad int
);

CREATE TABLE if not exists salas (
codigo int primary key auto_increment,
nombre nvarchar(100),
codigo_peli int,
CONSTRAINT FK_peliculas FOREIGN KEY (codigo_peli) REFERENCES peliculas(codigo)
);