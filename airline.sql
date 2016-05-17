/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  daemonsoft
 * Created: 16/05/2016
 */


CREATE TABLE IF NOT EXISTS 'avion' (
  'id' VARCHAR(10),
  'nombre' VARCHAR(50),
  'capacidad_primera' NUMBER(4),
  'capacidad_economica' NUMBER(4),
	PRIMARY KEY (idavion));
  
  
CREATE TABLE IF NOT EXISTS 'vuelo' (
  'id' NUMBER(10),
  'aeropuerto_salida' NUMBER(4),
  'aeropuerto_llegada' NUMBER(4),
  'fecha' DATETIME,
  FOREIGN KEY (aeropuerto_salida) REFERENCES aeropuerto (id),
  FOREIGN KEY (aeropuerto_llegada) REFERENCES aeropuerto (id),
	PRIMARY KEY (id));
  
CREATE TABLE IF NOT EXISTS 'vueloxescala' (
  'idvuelo' NUMBER(10),
  'idescala' NUMBER(10),
  FOREIGN KEY (idvuelo) REFERENCES vuelo (id),
  FOREIGN KEY (idescala) REFERENCES escala (id),
	PRIMARY KEY (idvuelo, idescala));
  
CREATE TABLE IF NOT EXISTS 'escala' (
  'id' NUMBER(10),
  'idvuelo' NUMBER(10),
  'aeropuerto' NUMBER(4),
  'hora' DATETIME,
  FOREIGN KEY (idvuelo) REFERENCES vuelo (id),
	PRIMARY KEY (id));
  
CREATE TABLE IF NOT EXISTS 'socio' (
  'tipoid' VARCHAR(2), 
  'numeroid' NUMBER(15), 
  'nombre' VARCHAR(50), 
  'apellido' VARCHAR(50), 
  'fecha_nacimiento' DATE, 
  'correo' VARCHAR(50), 
  'contrasena' VARCHAR(50), 
  'genero' VARCHAR(1), 
  'pais_nacimiento' NUMBER(4), 
  'pais_residencia' NUMBER(4), 
  'departamento' NUMBER(4), 
  'ciudad' NUMBER(4), 
  'direccion' VARCHAR(50),
	PRIMARY KEY (tipoid, numeroid));

CREATE TABLE IF NOT EXISTS 'asiento' (
  'id' NUMBER(10),
  'cabina' NUMBER(10),
	PRIMARY KEY (id));
  
CREATE TABLE IF NOT EXISTS 'cabina' ( 
  'id' NUMBER(10),
  'tipo' NUMBER(2),
  'avion' VARCHAR(50),                                    
	PRIMARY KEY (id));							
  
  CREATE TABLE IF NOT EXISTS 'tipocabina' ( 
  'id' NUMBER(10),
  'nombre' VARCHAR(50),                                    
	PRIMARY KEY (id));		
    
CREATE TABLE IF NOT EXISTS 'tiquete' (
  'vuelo' NUMBER(10),
  'asiento' NUMBER(10),
  'precio' NUMBER(15),
	PRIMARY KEY (idavion));
  
CREATE TABLE IF NOT EXISTS 'aeropuerto' (
  'id' NUMBER(10),
  'nombre' VARCHAR(50),
  'ciudad' NUMBER(4),
  FOREIGN KEY (ciudad) REFERENCES ciudad (id),
	PRIMARY KEY (idavion));
  
CREATE TABLE IF NOT EXISTS 'ciudad' (
  'id' NUMBER(4),
  'nombre' VARCHAR(50),
  'estado' NUMBER(4),
  FOREIGN KEY (estado) REFERENCES estado (id),
	PRIMARY KEY (id));
  
CREATE TABLE IF NOT EXISTS 'pais' (
  'id' NUMBER(4),
  'nombre' VARCHAR(50),
	PRIMARY KEY (id));
  
CREATE TABLE IF NOT EXISTS 'estado' (
  'id' NUMBER(4),
  'nombre' VARCHAR(50),  
  'pais' NUMBER(4),
  FOREIGN KEY (pais) REFERENCES pais (id),
	PRIMARY KEY (id));
