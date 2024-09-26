select * 
from transacciones tr, banco ba 
where ba.codigo_transaccion = tr.codigo and (tr.tipo = 'C') and (tr.numero_cuenta between '22001' and '22004');

select * 
from transacciones tr 
where tr.codigo = (select codigo_transaccion from banco where codigo_transaccion = 1);