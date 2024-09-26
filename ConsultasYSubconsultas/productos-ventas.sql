select pr.nombre, pr.stock, ve.cantidad, ve.id_venta
from productos pr, ventas ve
where pr.codigo = ve.codigo_producto and (pr.nombre like '%m%' || pr.descripcion = '0');

select pr.nombre, pr.stock
from productos pr
where pr.codigo = (select codigo_producto from ventas where cantidad = 5);