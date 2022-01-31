CREATE DATABASE IF NOT EXISTS DDLej1;
use DDLej1;
CREATE TABLE if not exists Estacion (
	ID int primary key AUTO_INCREMENT,
	latitud int,
	longitud int,
	altitud int
);

CREATE TABLE if not exists Muestra (
	IDestacion int primary key AUTO_INCREMENT,
    fecha date,
	temperatura_min int,
	temperatura_max int,
	precipitaciones int,
    humedad_min int,
    humedad_max int,
    velocidad_viento_min int,
    velocidad_viento_max int
);