
CREATE TABLE IF NOT EXISTS socio(
  tipoid VARCHAR(2),
  numeroid INTEGER(15),
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  fecha_nacimiento DATE,
  correo VARCHAR(50),
  contrasena VARCHAR(50),
  genero VARCHAR(1),
  pais_nacimiento INTEGER(4),
  pais_residencia INTEGER(4),
  departamento INTEGER(4),
  ciudad INTEGER(4),
  direccion VARCHAR(50),
  PRIMARY KEY(tipoid, numeroid)
);
CREATE TABLE IF NOT EXISTS tipocabina(
  id INTEGER(2),
  nombre VARCHAR(50),
  PRIMARY KEY(id)
);



CREATE TABLE IF NOT EXISTS pais(
  id INTEGER(4),
  nombre VARCHAR(50),
  PRIMARY KEY(id)
  );
  
  CREATE TABLE IF NOT EXISTS estado(
  id INTEGER(4),
  nombre VARCHAR(50),
  pais INTEGER(4),
  FOREIGN KEY(pais) REFERENCES pais(id),
  PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS ciudad(
  id INTEGER(4),
  nombre VARCHAR(50),
  estado INTEGER(4),
  FOREIGN KEY(estado) REFERENCES estado(id),
  PRIMARY KEY(id)
);



CREATE TABLE IF NOT EXISTS aeropuerto(
  id INTEGER(10),
  nombre VARCHAR(50),
  ciudad INTEGER(4),
  FOREIGN KEY(ciudad) REFERENCES ciudad(id),
  PRIMARY KEY(id)
);


CREATE TABLE IF NOT EXISTS avion(
  id VARCHAR(10),
  nombre VARCHAR(50),
  capacidad_primera INTEGER(4),
  capacidad_economica INTEGER(4),
  PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS vuelo(
  id INTEGER(10),
  aeropuerto_salida INTEGER(4),
  aeropuerto_llegada INTEGER(4),
  fecha DATETIME,
  FOREIGN KEY(aeropuerto_salida) REFERENCES aeropuerto(id),
  FOREIGN KEY(aeropuerto_llegada) REFERENCES aeropuerto(id),
  PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS cabina(
  id INTEGER(10),
  tipo INTEGER(2),
  avion VARCHAR(10),
  FOREIGN KEY(tipo) REFERENCES tipocabina(id),
  FOREIGN KEY(avion) REFERENCES avion(id),
  PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS asiento(
  id INTEGER(10),
  cabina INTEGER(10),
  PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS tiquete(
  vuelo INTEGER(10),
  asiento INTEGER(10),
  precio INTEGER(15),
  FOREIGN KEY(vuelo) REFERENCES vuelo(id),
  FOREIGN KEY(asiento) REFERENCES asiento(id),
  PRIMARY KEY(vuelo, ASIENTO)
);
CREATE TABLE IF NOT EXISTS escala(
  id INTEGER(10),
  idvuelo INTEGER(10),
  aeropuerto INTEGER(4),
  hora DATETIME,
  FOREIGN KEY(idvuelo) REFERENCES vuelo(id),
  PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS vueloxescala(
  idvuelo INTEGER(10),
  idescala INTEGER(10),
  FOREIGN KEY(idvuelo) REFERENCES vuelo(id),
  FOREIGN KEY(idescala) REFERENCES escala(id),
  PRIMARY KEY(idvuelo, idescala)
);