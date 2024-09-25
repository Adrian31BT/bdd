select * from cuentas;
delete from cuentas;

create table usuario(
	cedula char (5) not null,
	nombre varchar (25) not null,
	apellido varchar (25) not null,
	tipo_cuenta varchar (20),
	limite_credito decimal (10,5),
	constraint cedula_pk primary key(cedula) 
);

alter table cuentas
add constraint cuentas_usuario_fk 
foreign key (cedula_propietario)
references usuario(cedula)

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
values ('17504', 'Adrian', 'Bacilio', 'D', 2000);
insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
values ('17500', 'Denise', 'Perero', 'C', 2000);
insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
values ('17501', 'Mariengelis', 'Soto', 'D', 2000);
insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
values ('17508', 'Johnny', 'Borbor', 'D', 2000);
insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
values ('17509', 'Ariel', 'Cirstoiu', 'C', 2000);
insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
values ('17510', 'Zaine', 'Lopez', 'D', 2000);
insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
values ('17507', 'Danny', 'Bacilio', 'C', 2000);
insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
values ('17515', 'Anderson', 'Hernandez', 'D', 2000);
insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
values ('17512', 'Lenin', 'Lainez', 'C', 2000);
insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
values ('17503', 'Nathaly', 'Freire', 'D', 2000);

select * from usuario;

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'21/08/2022',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'21/09/2023',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17504,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/10/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/05/2023',100);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/09/2022',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/12/2022',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/11/2022',250);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17507,'15/06/2023',350);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17507,'15/11/2022',450);
