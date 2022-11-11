ALTER TABLE negocio.producto DROP foreign key productoProveedor;
ALTER TABLE negocio.factura DROP foreign key facturaProducto;
ALTER TABLE negocio.factura DROP foreign key facturaProveedor;
DROP TABLE negocio.factura;
ALTER TABLE negocio.compra DROP foreign key compraProducto;
DROP TABLE negocio.producto;
DROP TABLE negocio.proveedor;
ALTER TABLE negocio.boleta DROP foreign key boletaCompra;
DROP TABLE negocio.compra;
ALTER TABLE negocio.boleta DROP foreign key boletaCliente;
ALTER TABLE negocio.boleta DROP foreign key boletaVendedor;
DROP TABLE negocio.boleta;
DROP TABLE negocio.cliente;
DROP TABLE negocio.vendedor;
drop schema negocio;

create schema if not exists negocio;

create table `negocio`.`producto`(
`producto_id` int not null auto_increment,
`nombre` varchar(25) not null,
`precio` int not null,
`tipoProducto` varchar(25) not null,
primary key (`producto_id`));

create table `negocio`.`proveedor`(
`proveedor_id` int not null auto_increment,
`nombre` varchar (25) not null,
`rut` varchar(16) not null,
primary key (`proveedor_id`));

create table `negocio`.`factura` (
`factura_id` int not null auto_increment,
`precioProveedor` int not null,
`fechaFactura` date not null,
primary key (`factura_id`));

create table `negocio`.`compra`(
`compra_id` int not null auto_increment,
`precioCompra` int not null,
primary key ( `compra_id`));

create table `negocio`.`boleta`(
`boleta_id` int not null auto_increment,
`fecha` date not null,
`precioTotal` int not null,
primary key (`boleta_id`));

create table `negocio`.`vendedor`(
`vendedor_id` int not null auto_increment,
`nombre` varchar (25) not null,
`rut` varchar(16) not null,
primary key (`vendedor_id`));

create table `negocio`.`cliente`(
`cliente_id` int not null auto_increment,
`nombre` varchar (25) not null,
`rut` varchar(16) not null,
primary key (`cliente_id`));


ALTER TABLE negocio.producto ADD proveedor_id INT NOT NULL;
ALTER TABLE negocio.producto ADD CONSTRAINT productoProveedor FOREIGN KEY (proveedor_id) REFERENCES negocio.proveedor(proveedor_id);

ALTER TABLE negocio.compra ADD producto_id INT NOT NULL;
ALTER TABLE negocio.compra ADD CONSTRAINT compraProducto FOREIGN KEY (producto_id) REFERENCES negocio.producto(producto_id);

ALTER TABLE negocio.factura ADD producto_id INT NOT NULL;
ALTER TABLE negocio.factura ADD CONSTRAINT facturaProducto FOREIGN KEY (producto_id) REFERENCES negocio.producto(producto_id);

ALTER TABLE negocio.factura ADD proveedor_id INT NOT NULL;
ALTER TABLE negocio.factura ADD CONSTRAINT facturaProveedor FOREIGN KEY (proveedor_id) REFERENCES negocio.proveedor(proveedor_id);

ALTER TABLE negocio.boleta ADD compra_id INT NOT NULL;
ALTER TABLE negocio.boleta ADD CONSTRAINT boletaCompra FOREIGN KEY (compra_id) REFERENCES negocio.compra(compra_id);

ALTER TABLE negocio.boleta ADD vendedor_id INT NOT NULL;
ALTER TABLE negocio.boleta ADD CONSTRAINT boletaVendedor FOREIGN KEY (vendedor_id) REFERENCES negocio.vendedor(vendedor_id);

ALTER TABLE negocio.boleta ADD cliente_id INT NOT NULL;
ALTER TABLE negocio.boleta ADD CONSTRAINT boletaCliente FOREIGN KEY (cliente_id) REFERENCES negocio.cliente(cliente_id);














