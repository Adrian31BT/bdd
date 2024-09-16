--crea la tabla registro entradas
create table registros_entradas(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entradas_pk primary key (codigo_registro)
)

insert into registros_entradas (codigo_registro, cedula_empleado, fecha, hora) 
values (11111, '0923138747', '22/02/2022', '12:20')
insert into registros_entradas (codigo_registro, cedula_empleado, fecha, hora) 
values (22222, '2453463466', '12/02/2022', '13:00')
insert into registros_entradas (codigo_registro, cedula_empleado, fecha, hora) 
values (33333, '7332342433', '03/03/2021', '08:40')
insert into registros_entradas (codigo_registro, cedula_empleado, fecha, hora) 
values (44444, '2456435344', '04/04/2021', '09:22')
insert into registros_entradas (codigo_registro, cedula_empleado, fecha, hora) 
values (55555, '2898797989', '21/05/2021', '11:32')
insert into registros_entradas (codigo_registro, cedula_empleado, fecha, hora) 
values (66666, '2314343423', '22/06/2024', '14:20')
insert into registros_entradas (codigo_registro, cedula_empleado, fecha, hora) 
values (77777, '2414124124', '16/08/2023', '15:12')
insert into registros_entradas (codigo_registro, cedula_empleado, fecha, hora) 
values (88888, '2412545364', '17/09/2024', '09:10')
insert into registros_entradas (codigo_registro, cedula_empleado, fecha, hora) 
values (99999, '0947812942', '18/11/2023', '17:30')
insert into registros_entradas (codigo_registro, cedula_empleado, fecha, hora) 
values (10101, '2214122422', '19/12/2023', '18:40')

select * from registros_entradas