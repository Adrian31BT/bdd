select * from videojuegos;
delete from videojuegos;

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de Guerra', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);
insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of war', 'juego de aprendisaje', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de batalla', 8);


create table plataformas(
	id_plataforma int not null,
	nombre_plataforma varchar (10) not null,
	codigo_videojuego int,
	constraint id_plataforma_pk primary key(id_plataforma),
	constraint videojuegos_plataformas_fk foreign key (codigo_videojuego)
	references videojuegos(codigo)
);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(1, 'Capcom', '07563');
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(2, 'Sega', '15983');
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(3, 'Marvel', '01456');
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(4, 'Nvidia', '85421');

select * from plataformas;



