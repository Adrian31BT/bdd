--Relacion cuentas - usuario
--1
select ROUND(AVG(cast(cu.saldo as numeric)),2) as saldo_promedio from
cuentas cu, usuario us
where us.cedula = cu.cedula_propietario
and us.cedula = '17504';
--2
select us.tipo_cuenta, count(cu.numero_cuenta) as total_cuentas from
cuentas cu, usuario us
where us.cedula = cu.cedula_propietario
group by us.tipo_cuenta;

--Relacion clientes - compras
--1
select co.cedula, SUM(co.monto) as monto_total_compras
from compras co
group by co.cedula;

--2
select fecha_compra, count(id_compra) as total_compras
from compras
where fecha_compra = '25/09/2024'
group by fecha_compra;

--Relacion estudiantes - profesores
--1
select codigo_profesor, count(cedula) as total_estudiantes
from estudiantes
group by codigo_profesor;

--2
select ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE)-EXTRACT(YEAR FROM fecha_nacimiento))) as edad_promedio
from estudiantes;

--Relacion persona - prestamo
--1
select cedula, SUM(monto) as monto_total_prestamos
from prestamo
group by cedula;

--2
select COUNT(cedula) as total_personas
from persona
where (numero_hijos > 1);

--Relacion productos - ventas
--1
select MAX(precio) as precio_maximo
from productos;

--2
select SUM(cantidad) as cantidad_total_vendida
from ventas;

--Relacion transacciones - banco
--1
select COUNT(codigo) as total_transacciones_credito
from transacciones
where tipo = 'C';

--2
select numero_cuenta, ROUND(AVG(cast(monto as decimal)),2) as monto_promedio
from transacciones
group by numero_cuenta;

--Relacion videojuegos - plataformas
--1
select vi.codigo, COUNT(id_plataforma) as total_pataformas
from plataformas pl, videojuegos vi
where pl.codigo_videojuego = vi.codigo
group by vi.codigo;

--2
select ROUND(AVG(valoracion),2) as valoracion_promedio
from videojuegos;

--Relacion registros_entradas - empleado
--1
select cedula_empleado, COUNT(codigo_registro) as total_registros_entradas
from registros_entradas
group by cedula_empleado;

--2
select MIN(fecha) as fecha_minima, MAX(fecha) as fecha_maxima
from registros_entradas;