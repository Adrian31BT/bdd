--Relacion muchos a muchos entre municipio y proyectos
--Consulta 1
select mun.nombre as nombre_municipio, pro.proyecto
from municipio mun, proyecto pro, proyecto_municipio pm
where mun.municipio_id = pm.municipio_id and pro.proyecto_id = pm.proyecto_id;

--Subconsulta 1
select proyecto 
from proyecto
where proyecto_id in (select proyecto_id from proyecto_municipio where municipio_id = 1);

--Funcion de agregacion 1
select mun.nombre as nombre_municipio, COUNT(pm.proyecto_id) as cantidad_proyecto
from municipio mun, proyecto_municipio pm
where mun.municipio_id = pm.municipio_id 
group by mun.nombre;

--Consulta 2
select mun.nombre as nombre_municipio, pro.proyecto
from municipio mun, proyecto pro, proyecto_municipio pm
where mun.municipio_id = pm.municipio_id and pro.proyecto_id = pm.proyecto_id
and mun.nombre like '%GAD%';

--Funcion de agregacion 2
select mun.nombre, MIN(pm.proyecto_id)
from municipio mun, proyecto_municipio pm
where mun.municipio_id = pm.municipio_id
group by mun.nombre;

--Consulta 3
select mun.nombre as nombre_municipio, ciu.nombre as nombre_ciudad
from municipio mun, ciudad ciu
where mun.ciudad_id = ciu.ciudad_id

--Subconsulta 3
select proyecto 
from proyecto
where proyecto_id in (select proyecto_id from proyecto_municipio where municipio_id = 3);

--Funcion de agregacion 3
select mun.nombre, MAX(pm.proyecto_id)
from municipio mun, proyecto_municipio pm
where mun.municipio_id = pm.municipio_id
group by mun.nombre;








