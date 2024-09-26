select cu.numero_cuenta, us.nombre from
usuario us, cuentas cu 
where us.cedula = cu.cedula_propietario and (cu.saldo between money(100) and money(1000));

select cu.numero_cuenta, cu.fecha_creacion, cu.saldo, cu.cedula_propietario, us.nombre, us.apellido
from usuario us, cuentas cu
where us.cedula = cu.cedula_propietario and (cu.fecha_creacion between '21/09/2022' and '21/09/2023');
