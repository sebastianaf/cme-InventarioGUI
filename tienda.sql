-- creando la estructura de las tablas
create table tienda(
    id integer primary key auto_increment,
    nombre varchar(100) unique not null
);

create table almacen(
    id integer primary key auto_increment,
    direccion varchar(100) unique not null,
    nombre varchar(100) unique not null,
    id_tienda integer
);

create table producto(
    id integer primary key auto_increment,
    nombre varchar(100) unique not null,
    id_marca integer
);

create table marca(
    id integer primary key auto_increment,
    nombre varchar(100) unique not null
);

create table venta(
    id integer primary key auto_increment,
    hora_fecha datetime default current_time, 
    id_cliente integer,
    id_almacen integer
);

create table cliente(
    id integer primary key auto_increment,
    dni varchar(100) unique not null,
    nombre varchar(100) unique not null
);

create table producto_venta(
    id_producto integer,
    id_venta integer primary key,
    cantidad integer
);

-- declarando las llaves foráneas
alter table almacen add foreign key (id_tienda) references tienda(id);
alter table producto add foreign key (id_marca) references marca(id);
alter table venta add foreign key (id_cliente) references cliente(id);
alter table venta add foreign key (id_almacen) references almacen(id);
alter table producto_venta add foreign key (id_producto) references producto(id);
alter table producto_venta add foreign key (id_venta) references venta(id);

insert into venta()