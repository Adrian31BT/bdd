--Relacion muchos a muchos entre usuario y grupo
--Consulta 1 
select usu.nombre as nombres_usuarios, gru.nombre as nombres_grupo
from usuarios usu, grupo gru, usuario_grupo ug
where ug.us_id = usu.id_usuario
and ug.gr_id = gru.id_grupo;

--Subconsulta 1
select nombre 
from usuarios
where id_usuario in (select us_id from usuario_grupo where gr_id = 1);

--Funcion de agregacion 1
select gru.nombre as nombre_grupo, COUNT(ug.us_id) as cantidad_usuario
from grupo gru, usuario_grupo ug
where ug.gr_id = gru.id_grupo
group by gru.nombre;

--Consulta 2
select usu.nombre as nombres_usuarios, gru.nombre as nombres_grupo
from usuarios usu, grupo gru, usuario_grupo ug
where ug.us_id = usu.id_usuario and ug.gr_id = gru.id_grupo
and gru.nombre like '%intensivo%';

--Subconsulta 2
select nombre as nombre_usuario
from usuarios
where id_usuario in (select us_id from usuario_grupo where gr_id = 1);

--Funcion de agregacion 2
select gru.nombre as nombre_grupo, MAX(ug.us_id) as max_valor_usuario , MIN(ug.us_id) as min_valor_usuario
from grupo gru, usuario_grupo ug
where ug.gr_id = gru.id_grupo
group by gru.nombre;

--Consulta 3
select usu.nombre as nombres_usuarios, gru.fecha_creacion 
from usuarios usu, grupo gru, usuario_grupo ug
where ug.us_id = usu.id_usuario and ug.gr_id = gru.id_grupo
and gru.fecha_creacion between '2020-03-08' and '2022-03-08'

--Subconsulta 3
select nombre
from usuarios
where id_usuario in (select us_id from usuario_grupo where gr_id = 3);

--Funcion de agregacion 3
select gru.descripcion, COUNT(ug.us_id) as cantidad
from grupo gru, usuario_grupo ug
where ug.gr_id = gru.id_grupo
and gru.descripcion like '%matutino%'
group by gru.descripcion;



