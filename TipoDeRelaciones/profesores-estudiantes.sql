select * from estudiantes;
delete from estudiantes;

alter table estudiantes
add column codigo_profesor int;

create table profesores(
	codigo int not null,
	nombre varchar (50) not null,
	constraint codigo_pk primary key(codigo)
);

alter table estudiantes
add constraint profesores_estudiantes_fk 
foreign key (codigo_profesor)
references profesores(codigo);

insert into profesores (codigo, nombre)
values (1, 'Ricardo');
insert into profesores (codigo, nombre)
values (2, 'Francisco');
insert into profesores (codigo, nombre)
values (3, 'Monica');
insert into profesores (codigo, nombre)
values (4, 'Cecilia');
insert into profesores (codigo, nombre)
values (5, 'Alejandro');

select * from profesores;

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003', 1);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000', 2);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005', 2);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002', 3);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008', 4);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002', 5);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010', 2);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001', 1);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000',4);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001', 4);