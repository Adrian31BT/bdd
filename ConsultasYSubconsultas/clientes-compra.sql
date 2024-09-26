select nombre, apellido from clientes 
where cedula like '%7%';

select * from clientes 
where cedula = (select cedula from clientes where nombre = 'Monica');