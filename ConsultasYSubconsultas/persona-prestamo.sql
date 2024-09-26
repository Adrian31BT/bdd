select pe.cantidad_ahorrada, pr.monto, pr.garante
from prestamo pr, persona pe
where pr.cedula = pe.cedula and (pr.monto between money(100) and money(1000));

select * from persona pe, prestamo pr
where pr.cedula = pe.cedula and (pe.cedula = (select cedula from persona where nombre='Sean' ) );
