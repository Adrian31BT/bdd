select re.cedula_empleado, re.fecha,  em.nombre
from empleado em, registros_entradas re
where re.codigo_empleado = em.codigo_empleado
and ((re.fecha between '01/08/2023' and '31/08/2023') or (re.cedula_empleado like '17%') and (re.hora between '08:00' and '12:00'))
or ((re.fecha between '06/10/2023' and '20/10/2023') and (re.cedula_empleado like '08%') and (re.hora between '09:00' and '13:00'));

select re.codigo_registro, em.nombre from empleado em, registros_entradas re
where  re.codigo_empleado = em.codigo_empleado
and em.codigo_empleado = (select codigo_empleado from registros_entradas where codigo_empleado = '2201');