
ALTER TABLE negocio.producto DROP foreign key productoCategoria;
ALTER TABLE negocio.producto DROP foreign key productoProveedor;
ALTER TABLE negocio.detalleBoleta DROP foreign key detalleBoletaProducto;
ALTER TABLE negocio.detalleBoleta DROP foreign key detalleBoletaBoleta;
ALTER TABLE negocio.boleta DROP foreign key boletaCliente;

DROP TABLE negocio.producto;
DROP TABLE negocio.proveedor;
DROP TABLE negocio.detalleBoleta;
DROP TABLE negocio.boleta;
DROP TABLE negocio.categoria;
DROP TABLE negocio.cliente;

DROP SCHEMA negocio;


create schema if not exists negocio;

create table `negocio`.`producto`(
`producto_id` int not null auto_increment,
`nombre` varchar(25) not null,
`precioVenta` int not null,
`precioCompra` int not null,
`stock` int not null,
primary key (`producto_id`));

create table `negocio`.`proveedor`(
`proveedor_id` int not null auto_increment,
`nombre` varchar (25) not null,
`rut` varchar(16) not null,
primary key (`proveedor_id`));

create table `negocio`.`detalleBoleta`(
`detalleBoleta_id` int not null auto_increment,
`cantidadProducto` int not null,
`precioBoleta` int not null,
primary key ( `detalleBoleta_id`));

create table `negocio`.`boleta`(
`boleta_id` int not null auto_increment,
`fecha` date not null,
primary key (`boleta_id`));

create table `negocio`.`categoria`(
`categoria_id` int not null auto_increment,
`nombreCategoria` varchar (25) not null,
primary key (`categoria_id`));

create table `negocio`.`cliente`(
`cliente_id` int not null auto_increment,
`nombre` varchar (25) not null,
`rut` varchar(16) not null,
primary key (`cliente_id`));



ALTER TABLE negocio.producto ADD categoria_id INT NOT NULL;
ALTER TABLE negocio.producto ADD CONSTRAINT productoCategoria FOREIGN KEY (categoria_id) REFERENCES negocio.categoria(categoria_id);

ALTER TABLE negocio.producto ADD proveedor_id INT NOT NULL;
ALTER TABLE negocio.producto ADD CONSTRAINT productoProveedor FOREIGN KEY (proveedor_id) REFERENCES negocio.proveedor(proveedor_id);

ALTER TABLE negocio.detalleBoleta ADD producto_id INT NOT NULL;
ALTER TABLE negocio.detalleBoleta ADD CONSTRAINT detalleBoletaProducto FOREIGN KEY (producto_id) REFERENCES negocio.producto(producto_id);

ALTER TABLE negocio.detalleBoleta ADD boleta_id INT NOT NULL;
ALTER TABLE negocio.detalleBoleta ADD CONSTRAINT detalleBoletaBoleta FOREIGN KEY (boleta_id) REFERENCES negocio.boleta(boleta_id);

ALTER TABLE negocio.boleta ADD cliente_id INT NOT NULL;
ALTER TABLE negocio.boleta ADD CONSTRAINT boletaCliente FOREIGN KEY (cliente_id) REFERENCES negocio.cliente(cliente_id);














