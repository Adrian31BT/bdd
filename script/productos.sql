--crea la tabla productos
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

insert into productos (codigo, nombre, descripcion, precio, stock) 
values (1, 'Mouse', 'Meeteon Azul', 15.50, 6)
insert into productos (codigo, nombre, descripcion, precio, stock) 
values (2, 'Celular', 'Infinix Glod', 265.50, 10)
insert into productos (codigo, nombre, descripcion, precio, stock) 
values (3, 'Laptop', 'Lenovo negra', 555.90, 7)
insert into productos (codigo, nombre, descripcion, precio, stock) 
values (4, 'Audifonos', 'Realme inalambricos', 20, 5)
insert into productos (codigo, nombre, descripcion, precio, stock) 
values (5, 'Teclado', 'HP gamer', 20.10, 3)

insert into productos (codigo, nombre, precio, stock) 
values (6, 'Camara', 25.60, 11)
insert into productos (codigo, nombre, precio, stock) 
values (7, 'Tv', 465.50, 8)
insert into productos (codigo, nombre, precio, stock) 
values (8, 'Luces LED', 35.90, 7)

select * from productos

--Reto 4
--1
select * from productos where nombre like 'Q%'
--2
select * from productos where descripcion is null
--3
select * from productos where precio between '2' and '3'