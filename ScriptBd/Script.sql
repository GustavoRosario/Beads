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
activo bit default true,
primary key(id_vehiculo)
);

create table bdsProvincia(
id_provincia integer not null auto_increment,
provincia varchar(120) not null,
primary key(id_provincia)
);

create table bdsTipoUsuario(
id_tipousuario integer not null auto_increment,
descripcion varchar(20) not null,
activo bit default true,
primary key(id_tipousuario)
);

create table bdsUsuario(
id_usuario integer not null auto_increment,
id_tipousuario integer not null,
id_provincia integer not null,
nombre varchar(30) not null,
correo varchar(70),
telefono varchar(11),
celular varchar(11) not null,
whatsapp bit default false,
telegram bit default false,
direccion varchar(120) not null,
activo bit default true,
primary key(id_usuario)
);