# Creamos la base de datos:
CREATE database colegio;

use colegio;


# Creamos las tablas
CREATE TABLE alumno (alumno_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT, 
					nombre_alumno VARCHAR(45) NOT NULL, 
                    edad SMALLINT UNSIGNED NOT NULL, 
                    PRIMARY KEY (alumno_id));

CREATE TABLE asignatura (asignatura_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT, 
					nombre_asignatura VARCHAR(45) NOT NULL, 
                    PRIMARY KEY (asignatura_id));
                    
CREATE TABLE profesor (profesor_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT, 
					nombre_profesor VARCHAR(45) NOT NULL, 
                    PRIMARY KEY (profesor_id));
                    
# Hemos utilziado Date (probar DateTime)
CREATE TABLE examen (examen_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT, 
					nota  SMALLINT NOT NULL, 
                    fecha DATE NOT NULL, 
                    PRIMARY KEY (examen_id));

# No  Hemos puesto autoincrement en ninguna variable
CREATE TABLE alumno_asignatura (alumno_id SMALLINT UNSIGNED NOT NULL,
                    asignatura_id SMALLINT UNSIGNED NOT NULL,
                    examen_id SMALLINT UNSIGNED NOT NULL,
                    PRIMARY KEY (alumno_id, asignatura_id));
                    
CREATE TABLE profesor_asignatura (profesor_id SMALLINT UNSIGNED NOT NULL,
                    asignatura_id SMALLINT UNSIGNED NOT NULL,
                    PRIMARY KEY (profesor_id, asignatura_id));