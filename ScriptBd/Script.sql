/*
create database beadsServ;
*/
create table bdsMarca (
id_marca integer not null AUTO_INCREMENT,
descripcion_marca varchar(70) not null,
activo bit default true,
primary key(id_marca)
);

create table bdsModelo (
id_modelo integer not null AUTO_INCREMENT,
id_marca integer not null,
nombre varchar(70) not null,
activo bit default true,
primary key(id_modelo)
);

create table bdsTipo(
id_tipo integer not null AUTO_INCREMENT,
descripcion_tipo varchar(70) not null,
activo bit default true,
primary key(id_tipo)
);

create table bdsEstado(
id_estado integer not null AUTO_INCREMENT,
descripcion_estado varchar(70) not null,
activo bit default true,
primary key(id_estado)
);

create table bdsMoneda(
id_moneda integer not null AUTO_INCREMENT,
codigo varchar(3) not null,
descripcion varchar(30) not null,
activo bit default true,
primary key(id_moneda)
);

/*===========================================================*/

create table bdsVehiculo(
id_vehiculo integer not null AUTO_INCREMENT,
id_modelo integer not null,
año_vehiculo integer not null,
precio_vehiculo integer not null,
moneda_id int not null,
precio float not null,
activo bit default true,
primary key(id_vehiculo)
);

