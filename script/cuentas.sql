--crea la tabla cuentas
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (23377, '09231', '13/03/2006', 300)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (23444, '09323', '14/12/2008', 7800)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (23555, '02131', '15/11/2009', 350)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (23222, '24531', '16/09/2012', 22300)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (23111, '85655', '17/09/2011', 5300)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (21277, '32234', '18/08/2011', 540)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (65344, '67323', '19/05/2020', 300)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (45447, '23423', '20/03/2022', 1000.35)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (87686, '23554', '23/08/2023', 800)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) 
values (87586, '03412', '12/07/2024', 700)

select * from cuentas

--1
select numero_cuenta, saldo from cuentas
--2
select * from cuentas where fecha_creacion between '01/07/2024' and '16/09/2024'
--3
select numero_cuenta, saldo from cuentas where fecha_creacion between '01/07/2024' and '16/09/2024'

--Reto 5
update cuentas set saldo = 10 where cedula_propietario like '17%'