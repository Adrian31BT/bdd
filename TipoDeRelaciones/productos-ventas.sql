select * from productos;
delete from productos;

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Mermelada','Piña',2.50,5);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre, descripcion,precio,stock)
values (10,'Coca Cola', '1 litro', 3.50,5);

create table ventas(
	id_venta int not null,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint id_venta_pk primary key(id_venta),
	constraint productos_ventas_fk foreign key (codigo_producto)
	references productos(codigo) 
);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values (1, 2, '25/09/2024', 10);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values (2, 3, '25/09/2024', 11);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values (3, 4, '25/09/2024', 5);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values (4, 4, '25/09/2024', 5);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values (5, 5, '25/09/2024', 10);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values (6, 6, '25/09/2024', 2);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values (7, 7, '25/09/2024', 9);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values (8, 1, '25/09/2024', 5);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values (9, 3, '25/09/2024', 1);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values (10, 8, '25/09/2024', 4);

select * from ventas;

