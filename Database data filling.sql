use colegio;

INSERT INTO alumno
(nombre_alumno, edad)
VALUES  ( 'Angel',25), ('Maria', 26);

INSERT INTO alumno
(nombre_alumno, edad)
VALUES  ('Miguel ',27), ('Hector', 30), ('Mario',29), ('Carlos', 30),( 'Juliana',32), ('Sandra', 30), ( 'Edu',22), ('Matias', 30),( 'Frankin',35), ('Cristian', 29), ( 'Bea',36), ('Iñigo', 28), ('Kiko', 31);


INSERT INTO profesor
(nombre_profesor)
VALUES  ('Alfonso'), ('Miquel'), ('Irene'), ('Vanessa'),('Camino');


INSERT INTO asignatura
(nombre_asignatura)
VALUES  ('Python'), ('Sql'), ('Visualizacion'),('Estadistica'),('Machinelearning'), ('Webscrapping'), ('Futbolin'), ('Algebra'), ('Calculo'), ('Nlp');

# Lista asignatura-fechas:
# Python -- '2021-10-25'
# Sql -- '2021-10-26'
# Visualizacion -- '2021-10-27'
# Estadistica -- '2021-10-28'


INSERT INTO examen
(nota, fecha)
VALUES  (7,'2021-10-25'), (5,'2021-10-25'), (6,'2021-10-25'), (4,'2021-10-25'),
		(8,'2021-10-26'), (3,'2021-10-26'), (10,'2021-10-26'), (9,'2021-10-26'), (7,'2021-10-26'),
        (7,'2021-10-27'), (5,'2021-10-27'), (8,'2021-10-27'), (4,'2021-10-27'), (7,'2021-10-27'),
        (9,'2021-10-28'), (6,'2021-10-28'), (10,'2021-10-28'), (9,'2021-10-28'), (6,'2021-10-28'),
        (8,'2021-10-29'), (7,'2021-10-29'), (6,'2021-10-29'), (9,'2021-10-29'), (7,'2021-10-29'),
        (8,'2021-10-30'), (8,'2021-10-30'), (10,'2021-10-30'), (6,'2021-10-30'), (5,'2021-10-30'),
        (7,'2021-10-31'), (5,'2021-10-31'), (4,'2021-10-31'), (9,'2021-10-31'), (6,'2021-10-31'),
        (8,'2021-11-01'), (8,'2021-11-01'), (5,'2021-11-01'), (8,'2021-11-01'), (7,'2021-11-01'),
        (9,'2021-11-02'), (9,'2021-11-02'), (7,'2021-11-02'), (9,'2021-11-02'), (9,'2021-11-02'),
        (5,'2021-11-03'), (7,'2021-11-03'), (8,'2021-11-03'), (10,'2021-11-03'), (7,'2021-11-03');
        
INSERT INTO examen
(nota, fecha)
VALUES  (2,'2021-10-25');
        

INSERT INTO alumno_asignatura
(alumno_id, asignatura_id, examen_id)
VALUES (1,1,1), (1,2,6), (1,3,11), (1,4,16);

INSERT INTO profesor_asignatura
(profesor_id, asignatura_id)
VALUES (1,1), (1,2), (1,7), (1,4),  
		(2,1), (2,8), (2,9),
        (3,5), (3,6),
        (4,3), (4,7),
        (5,10);

INSERT INTO alumno_asignatura
(alumno_id, asignatura_id, examen_id)
VALUES (1,1,1),(1,2,6),(1,3,11),(1,4,16);

INSERT INTO alumno_asignatura
(alumno_id, asignatura_id, examen_id)
VALUES   (2,1,2),(2,2,7),(2,3,12),(2,4,17),
		(3,7,3),(3,2,8),(3,3,13),(3,4,18),
		(4,5,4),(4,6,9),(4,7,14),(4,8,19),
		(5,5,5),(5,6,10),(5,7,15),(5,8,20),
		(6,5,21),(6,6,26),(6,7,31),
		(7,8,22),(7,5,27),(7,6,32),
		(8,9,23),(8,10,28),(8,1,33),
		(9,1,24),(9,2,29),(9,3,34),
		(10,4,25),(10,5,30),(10,6,35),
		(11,8,36),(11,7,41),(11,6,46),
		(12,10,37),(12,2,42),(12,4,47),
		(13,6,38),(13,2,43),(13,7,48),
		(14,5,39),(14,2,44),(14,3,49),
		(15,5,40),(15,6,45),(15,8,50);

INSERT INTO alumno_asignatura
(alumno_id, asignatura_id, examen_id)
VALUES   (3,1,51);