create database empleado;
use empleados;
drop database empleado;

create table if not exists puesto (
    codigo_puesto int(5) not null auto_increment,
    nombre_puesto varchar(60) not null,
    estado_puesto int(1)not null,
    primary key (codigo_puesto),
    key (codigo_puesto)
);

create table if not exists departamento (
    codigo_departamento int(5) not null auto_increment,
    nombre_departamento varchar(60) not null,
    estado_departamento int(1)not null,
    primary key (codigo_departamento),
    key (codigo_departamento)
);

create table if not exists empleado (
    codigo_empleado int(6) not null auto_increment,
	codigo_puesto int(6) not null,
    codigo_departamento int(6) not null,
	nombre_empleado varchar(30) not null,
    sueldo_empleado float (10,2),
    estado_empleado int(1)not null,
    primary key (codigo_empleado),
    key (codigo_empleado)
);

alter table empleado add constraint fk_empleado_puesto foreign key(codigo_puesto) references puesto(codigo_puesto);
alter table empleado add constraint fk_empleado_departamento foreign key(codigo_departamento) references departamento(codigo_departamento);

