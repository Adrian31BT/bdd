--Relacion muchos a muchos entre habitaciones y huespedes
--Consulta 1 
select hab.habitacion_numero, hue.nombres, hue.apellidos
from habitaciones hab, huespedes hue, reservas res
where res.habitacion = hab.habitacion_numero and res.huesped_id = hue.huesped_id

--Subconsulta 1
select nombres, apellidos
from huespedes
where huesped_id in (select huesped_id from reservas where habitacion = 2);

--Funcion de agregacion 1
select hab.habitacion_numero, COUNT(res.huesped_id) as numero_huesped
from habitaciones hab, reservas res
where hab.habitacion_numero = res.habitacion
group by hab.habitacion_numero;


--Consulta 2 
select hab.habitacion_numero, hab.piso, hue.nombres, hue.apellidos
from habitaciones hab, huespedes hue, reservas res
where hab.habitacion_numero = res.habitacion and res.huesped_id = hue.huesped_id
and hab.piso = 4;

--Subconsulta 2
select nombres, apellidos
from huespedes
where huesped_id in (select huesped_id from reservas where habitacion = 3); 

--Funcion de agregacion 2
select hab.habitacion_numero, ROUND(AVG(res.huesped_id),2) as promedio_huespedes
from habitaciones hab, reservas res
where hab.habitacion_numero = res.habitacion
group by hab.habitacion_numero;

--Consulta 3 
select hab.habitacion_numero, hue.nombres, hue.apellidos
from habitaciones hab, huespedes hue, reservas res
where hab.habitacion_numero = res.habitacion and res.huesped_id = hue.huesped_id;

--Subconsulta 3
select nombres, apellidos
from huespedes
where huesped_id in (select huesped_id from reservas where habitacion = 4); 

--Funcion de agregacion 3
select hab.habitacion_numero, SUM(hab.precio_por_noche)
from habitaciones hab, reservas res
where hab.habitacion_numero = res.habitacion
group by hab.habitacion_numero;










