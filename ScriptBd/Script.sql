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

create table bdsTipoVehiculo(
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

create table bdsTipoTransmision(
id_transmision integer not null AUTO_INCREMENT,
descripcion_transmision varchar(30) not null,
activo bit default true,
primary key(id_transmision)
);

create table bdsTipoCombustible(
id_combustible integer not null AUTO_INCREMENT,
descripcion_combustible varchar(20) not null,
activo bit default true,
primary key(id_combustible)
);

create table bdsTraccion(
id_traccion integer not null AUTO_INCREMENT,
descripcion_traccion varchar(20) not null,
activo bit default true,
primary key(id_traccion)
);

create table bdsColor(
id_color integer not null AUTO_INCREMENT,
descripcion_color varchar(10) not null,
primary key(id_color)
);

create table bdsUso(
id_uso integer not null AUTO_INCREMENT,
descripcion_Uso varchar(10) not null,
activo bit default true,
primary key(id_uso)
);

/*===========================================================*/

create table bdsVehiculo(
id_vehiculo integer not null AUTO_INCREMENT,
id_modelo integer not null,
id_uso integer not null,
id_color_exterior integer not null,
id_color_interior integer not null,
id_tipo integer not null,
id_transmision integer not null,
id_traccion integer not null,
cilindraje  integer not null,
año_vehiculo integer not null,
precio_vehiculo integer not null,
pasajeros integer not null,
puertas integer not null,
moneda_id int default 1,
observaciones varchar(500),
activo bit default true,
primary key(id_vehiculo)
);

create table bdsAccesorio(
id_accesorios int not null AUTO_INCREMENT,
descripcion_accesorio varchar(30) not null,
id_vehiculo int not null,
activo bit default true,
primary key(id_accesorios)
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