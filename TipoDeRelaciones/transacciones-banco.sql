delete from transacciones;
create table banco (
	codigo int not null,
	codigo_transaccion int,
	detalle varchar(100)
)

alter table banco
add constraint transacciones_banco_fk 
foreign key (codigo_transaccion)
references transacciones(codigo);

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(1, '75369', 200, 'C', '20/09/2023', '23:30');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(2, '22001', 500.65, 'D', '15/06/2022', '17:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(3, '21001', 1600, 'C', '17/05/2021', '16:37');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(4, '51437', 1050, 'D', '25/04/2020', '15:48');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(5, '02147', 300, 'D', '20/03/2019', '22:19');
insert into transacciones(codigo, numero_cuenta, monto, tipo, hora)
values(6, '22002', 400, 'C', '13:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(7, '85214', 600, 'D', '07/12/2015', '20:14');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(8, '22004', 800, 'D', '06/11/2012', '11:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(9, '74125', 900, 'D', '23/10/2002', '9:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(10, '22002', 2000, 'C', '11/09/1999', '7:30');

select * from transacciones;

insert into banco(codigo, codigo_transaccion, detalle)
values (1, 1, 'Banco Pacifico');
insert into banco(codigo, codigo_transaccion, detalle)
values (2, 1, 'Banco Pacifico');
insert into banco(codigo, codigo_transaccion, detalle)
values (3, 2, 'Banco Guayaquil');
insert into banco(codigo, codigo_transaccion, detalle)
values (4, 5, 'Banco Pichincha');

select * from banco;

