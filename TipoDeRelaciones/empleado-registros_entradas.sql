select * from registros_entradas;
delete from registros_entradas;

alter table registros_entradas
add column codigo_empleado int;

create table empleado(
	codigo_empleado int not null,
	nombre varchar (25) not null,
	fecha date not null,
	hora time not null,
	constraint codigo_empleado_pk primary key(codigo_empleado)
);

alter table registros_entradas
add constraint empleado_registro_entradas_fk 
foreign key (codigo_empleado)
references empleado(codigo_empleado);

insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2201, 'Ricardo', '25/09/2024', '08:00');
insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2202, 'Adrian', '25/09/2024', '08:00');
insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2203, 'Diana', '25/09/2024', '08:00');
insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2204, 'Santiago', '25/09/2024', '08:00');
insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2205, 'Roberto', '25/09/2024', '08:00');

select * from empleado;

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12345, '1725785413', '01/08/2023', '8:01', 2201);
insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12355, '1758254591', '03/10/2023', '13:00', 2202);
insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12346, '1758254591', '25/11/2023', '09:00', 2202);
insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12347, '1735642583', '28/09/2023', '09:40', 2203);
insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12389, '1778541235', '16/08/2023', '8:10', 2204);
insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12349, '1778541235', '17/09/2023', '10:00', 2205);
insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12310, '1778541235', '14/10/2023', '11:00', 2205);
insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12311, '1707416984', '15/11/2023', '12:00', 2204);
insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12358, '1725785413', '07/11/2023', '11:20', 2201);
insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12378, '1725785413', '31/12/2023', '08:16', 2201);