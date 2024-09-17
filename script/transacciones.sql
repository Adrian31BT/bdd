--crea la tabla transacciones
create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
)

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10101, '83762', 504.50, 'D', '31/01/2023', '13:00')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10102, '32523', 600.80, 'C', '01/08/2022', '14:00')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10103, '22412', 1000.77, 'C', '23/07/2022', '15:00')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10104, '75433', 2000.71, 'C', '15/01/2023', '13:10')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10105, '21231', 300.12, 'D', '17/06/2024', '17:00')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10106, '12312', 200.13, 'D', '18/01/2024', '09:00')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10107, '23122', 800.11, 'C', '16/05/2024', '10:00')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10108, '12312', 712.50, 'D', '28/04/2024', '11:00')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10109, '09776', 689.89, 'C', '09/03/2024', '12:40')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10110, '67566', 1986.40, 'D', '01/01/2023', '11:00')

select * from transacciones

--1
select * from transacciones where tipo = 'D'
--2
select * from transacciones where monto >= money(200) and monto <= money(2000)
--3
select codigo, monto, tipo, fecha from transacciones where fecha is not null

--Reto 5
update transacciones set tipo = 'T' where (monto > money(100) and monto < money(500)) and (to_char(fecha, 'MM') =  '09') and (hora between '14:00' and '20:00')  