select pr.codigo, es.nombre, es.apellido from
estudiantes es, profesores pr
where es.codigo_profesor = pr.codigo and (es.apellido like '%n%'); 

select * from estudiantes es 
where es.codigo_profesor = (select pr.codigo from profesores pr where nombre = 'Francisco');