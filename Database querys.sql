use colegio;


# 	Nota media de cada asignatura. HECHA
SELECT  nombre_asignatura, round(avg(nota),1) as nota_media
FROM examen as e
JOIN alumno_asignatura as a
ON e.examen_id = a.examen_id
JOIN asignatura as asi
ON a.asignatura_id = asi.asignatura_id
GROUP BY nombre_asignatura;

#  Nota media asociada a cada profesor (saca la media de las notas de sus asignaturas) HECHA
SELECT  p.nombre_profesor, round(avg(nota),1) as nota_media
FROM examen as e
JOIN alumno_asignatura as aa
ON e.examen_id = aa.examen_id
JOIN asignatura as a
ON aa.asignatura_id = a.asignatura_id
JOIN profesor_asignatura as pa
ON pa.asignatura_id = a.asignatura_id
JOIN profesor as p
ON pa.profesor_id = p.profesor_id
GROUP BY nombre_profesor;


# ¿Cuál es la nota del último examen realizado por el alumno con mayor nota media? HECHA
SELECT nombre_alumno, round(avg(nota),1) as nota_media, nota as nota_ultimo_examen, max(fecha) as ultima_fecha
FROM examen as e
JOIN alumno_asignatura as aa
ON e.examen_id = aa.examen_id
JOIN alumno as a
ON aa.alumno_id = a.alumno_id
GROUP BY a.alumno_id
ORDER BY nota_media DESC
LIMIT 1;

# ¿Cuál es la asignatura más dificil?  HECHA
SELECT a.nombre_asignatura as asignatura, count(e.examen_id) as suspensos
FROM 
  asignatura as  a
LEFT JOIN alumno_asignatura as aa on a.asignatura_id = aa.asignatura_id
LEFT JOIN examen as e on e.examen_id = aa.examen_id
WHERE nota < 5
GROUP BY
  a.nombre_asignatura
ORDER BY
suspensos DESC;


# Busca el grupo de riesgo de cada asignatura (alumnos que peor van) y verifica si hay alguno que esté en todas.
## El peor examen de cada asignatura (por el escaso número alumnos)
SELECT nombre_asignatura, al.alumno_id, min(nota) as peor_nota
FROM asignatura as a
JOIN alumno_asignatura as aa
ON a.asignatura_id = aa.asignatura_id
JOIN examen as e
ON e.examen_id = aa.examen_id
JOIN alumno as al
ON aa.alumno_id = al.alumno_id
GROUP BY nombre_asignatura;


SELECT nombre_alumno, nota, nombre_asignatura
FROM asignatura as a
JOIN alumno_asignatura as aa
ON a.asignatura_id = aa.asignatura_id
JOIN examen as e
ON e.examen_id = aa.examen_id
JOIN alumno as al
ON aa.alumno_id = al.alumno_id
GROUP BY nombre_asignatura;














SELECT nombre_asignatura, (
				SELECT a.nombre_alumno as peor_alumno
				FROM alumno as a
                JOIN alumno_asignatura as aa
				ON a.asignatura_id = aa.asignatura_id
				JOIN alumno as al
				ON al.alumno_id = aa.alumno_id
				JOIN examen as e
				ON e.examen_id = aa.examen_id
				WHERE nota = min(e.nota))
, min(nota) as peor_nota
FROM asignatura as a
JOIN alumno_asignatura as aa
ON a.asignatura_id = aa.asignatura_id
JOIN alumno as al
ON al.alumno_id = aa.alumno_id
JOIN examen as e
ON e.examen_id = aa.examen_id
GROUP BY nombre_asignatura
HAVING min(nota)
ORDER BY a.nombre_asignatura, min(nota);






select f.title as título, c.name as categoría
from sakila.film as f
left join sakila.film_category as fc 
        ON f.film_id = fc.film_id
left join sakila.category c
        ON     fc.category_id = c.category_id
WHERE c.category_id is not null;