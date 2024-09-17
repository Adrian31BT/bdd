--crea la tabla estudiantes
create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key (cedula)
)

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values (0923138747, 'Adrian', 'Bacilio', 'adrian31@gmail.com', '31/01/1998')
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values (0923122315, 'Gemma', 'Alcivar', 'gemmaalcivar@gmail.com', '01/02/1999')
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values (2232238743, 'Juli', 'Sandoval', 'sandojul@gmail.com', '25/09/2000')
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values (4324238722, 'Galo', 'Mejillon', 'galomeji@gmail.com', '15/08/1998')
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values (2323133212, 'Maria', 'Tigrero', 'mtigrero@gmail.com', '11/07/1994')
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values (1243252355, 'Julio', 'Balon', 'julbailon@gmail.com', '15/06/1995')
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values (0775435343, 'Karen', 'Flores', 'karenfl@gmail.com', '07/04/1996')
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values (9870870656, 'Cesar', 'Bailon', 'cebailon@gmail.com', '13/03/1999')
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) 
values (0674534445, 'Johnny', 'Cedeño', 'jceden@gmail.com', '22/02/1999')

select * from estudiantes

--1
select nombre, cedula from estudiantes 
--2
select nombre from estudiantes where cedula like '17%'
--3
select nombre, apellido from estudiantes where nombre like 'A%'