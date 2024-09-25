create table persona(
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido  varchar (50) not null,
	estatura decimal(10,2),
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	
	constraint cedula_persona_pk primary key(cedula)
);

create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar (40),
	constraint persona_prestamo_fk 
	foreign key (cedula)
	references persona(cedula)
);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values ('0923138747', 'Adrian', 'Bacilio', 1.64, '31/01/1998', '23:00', 1200, 0);
insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values ('0923134475', 'Sean', 'Tomala', 1.70, '31/01/1998', '23:00', 1000, 1);
insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values ('2343253532', 'Diana', 'Torres', 1.50, '31/01/1998', '23:00', 600, 2);

select * from persona;

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('0923138747', 200, '25/09/2024', '15:01', 'Paula');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('0923138747', 400, '25/09/2024', '15:01', 'Adrian');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('0923134475', 600, '25/09/2024', '15:01', 'Santiago');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('0923134475', 1000, '25/09/2024', '15:01', 'Denise');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('0923134475', 300.60, '25/09/2024', '15:01', 'Stalin');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('0923138747', 570, '25/09/2024', '15:01', 'Luis');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('0923138747', 867, '25/09/2024', '15:01', 'Julio');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('2343253532', 210, '25/09/2024', '15:01', 'Anna');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('2343253532', 110, '25/09/2024', '15:01', 'Maria');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('2343253532', 309.80, '25/09/2024', '15:01', 'Pablo');

select * from prestamo;