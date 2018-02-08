

1. Select * from estudiante 
//Muestra todos los estudiantes de la tabla//
//DS: identificacion, nombre_1, nombre_2, apellido_1, apellido_2//

2. select e.nombre_1, i.llamados_aten from estudiante e inner join estudiante_informacion es on es.id_estudiante=e.id inner join informacion i on i.id=es.id_informacion
//muestra el estudiante y los llamados de atenci�n que tiene//
//DE: id_estudiante and id_informacion; DS: nombre_1,  llamados_aten//

3. SELECT nombre_1, apellido_1, cargo_aca FROM profesores
//Muestra el nombre1 y apellido1 del docente y su cardo academico//
//DS: nombre_1, apellido_1, cargo_aca//

4. select e.nombre_1, i.estado_aca from estudiante e inner join estudiante_informacion es on es.id_estudiante=e.id inner join informacion i on i.id=es.id_informacion
// muestra el nombre del estudiante  y su estado academico//
//DE: id_estudiante and id_informacion; DS: nombre_1,  estado_aca//