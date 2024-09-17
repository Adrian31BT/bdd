--crea la tabla videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values (10101, 'Call Of Duty', 'Accion, guerra', 5)
insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values (10102, 'Spiderman 4', 'Accion, aventura', 4)
insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values (10103, 'Super Mario', 'Aventura, ficcion', 5)
insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values (10104, 'GTA 5', 'Accion, campaña', 5)
insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values (10105, 'WWZ', 'Accion, zombies', 5)

insert into videojuegos (codigo, nombre, valoracion) 
values (10106, 'Avenger', 3)
insert into videojuegos (codigo, nombre, valoracion) 
values (10107, 'FIFA 25', 5)
insert into videojuegos (codigo, nombre, valoracion) 
values (10108, 'WWE 5K 2024', 5)

select * from videojuegos

--1
select * from videojuegos where nombre like 'C%'
--2
select * from videojuegos where valoracion between 9 and 10
--4
select * from videojuegos where descripcion is null
