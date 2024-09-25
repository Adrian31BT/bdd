create table clientes(
	cedula char (10) not null,
	nombre varchar (25) not null,
	apellido varchar (25) not null,
	constraint cedula_cliente_pk primary key(cedula) 
);

create table compras(
	id_compra char (10) not null,
	cedula char (10) not null,
	fecha_compra date not null,
	monto decimal (10,2) not null,
	constraint id_compra_pk primary key(id_compra),
	constraint clientes_compras_fk foreign key (cedula)
	references clientes(cedula)
);

insert into clientes(cedula, nombre, apellido)
values ('0923138747', 'Adrian', 'Bacilio');
insert into clientes(cedula, nombre, apellido)
values ('0923123227', 'Diana', 'Torres');
insert into clientes(cedula, nombre, apellido)
values ('0937373822', 'Juan', 'Perez');
insert into clientes(cedula, nombre, apellido)
values ('2540942371', 'Pedro', 'Perero');
insert into clientes(cedula, nombre, apellido)
values ('2447303849', 'Monica', 'Valencia');
insert into clientes(cedula, nombre, apellido)
values ('0932645324', 'Lucas', 'Del Pezo');
insert into clientes(cedula, nombre, apellido)
values ('0923343000', 'Danny', 'Hernandez');
insert into clientes(cedula, nombre, apellido)
values ('3432434122', 'Santiago', 'Caicedo');
insert into clientes(cedula, nombre, apellido)
values ('6645489756', 'Darling', 'Nieto');
insert into clientes(cedula, nombre, apellido)
values ('1231234545', 'Maria', 'Garcia');

select * from clientes;

insert into compras(id_compra, cedula, fecha_compra, monto)
values ('0000000001', '0923138747', '25/09/2024', 54.43);
insert into compras(id_compra, cedula, fecha_compra, monto)
values ('0000000002', '2447303849', '25/09/2024', 20.33);
insert into compras(id_compra, cedula, fecha_compra, monto)
values ('0000000003', '0923138747', '25/09/2024', 100.20);
insert into compras(id_compra, cedula, fecha_compra, monto)
values ('0000000004', '2540942371', '25/09/2024', 50.20);
insert into compras(id_compra, cedula, fecha_compra, monto)
values ('0000000005', '0923138747', '25/09/2024', 60.67);
insert into compras(id_compra, cedula, fecha_compra, monto)
values ('0000000006', '0923138747', '25/09/2024', 10.20);
insert into compras(id_compra, cedula, fecha_compra, monto)
values ('0000000007', '0932645324', '25/09/2024', 50.33);
insert into compras(id_compra, cedula, fecha_compra, monto)
values ('0000000008', '3432434122', '25/09/2024', 90.89);
insert into compras(id_compra, cedula, fecha_compra, monto)
values ('0000000009', '1231234545', '25/09/2024', 30.67);
insert into compras(id_compra, cedula, fecha_compra, monto)
values ('0000000010', '0923123227', '25/09/2024', 29.20);

select * from compras;