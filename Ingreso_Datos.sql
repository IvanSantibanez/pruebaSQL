insert into negocio.proveedor (nombre,rut) values ('Pedro Perez', '14.517.431-2');
insert into negocio.proveedor (nombre,rut) values ('Juan Diaz', '17.497.491-7');
insert into negocio.proveedor (nombre,rut) values ('Maria Mendez', '16.762.914-2');


insert into negocio.producto (nombre,precio,tipoProducto,proveedor_id)values ('cryspo',2500,'snack',1);
insert into negocio.producto (nombre,precio,tipoProducto,proveedor_id)values ('Kapo',450,'jugo',2);
insert into negocio.producto (nombre,precio,tipoProducto,proveedor_id)values ('tomate',1600,'verdura',3);
insert into negocio.producto (nombre,precio,tipoProducto,proveedor_id)values ('clorox',3000,'aseo',1);
insert into negocio.producto (nombre,precio,tipoProducto,proveedor_id)values ('traga traga',1890,'snack',1);

insert into negocio.factura (precioProveedor,fechaFactura,producto_id,proveedor_id) values (2200,'2022-03-26',5,1);
insert into negocio.factura (precioProveedor,fechaFactura,producto_id,proveedor_id) values (1800,'2022-03-26',1,1);
insert into negocio.factura (precioProveedor,fechaFactura,producto_id,proveedor_id) values (1700,'2022-08-12',4,2);
insert into negocio.factura (precioProveedor,fechaFactura,producto_id,proveedor_id) values (1100,'2022-09-11',3,3);



insert into negocio.cliente (nombre,rut) values ('jaime alamos','16.317.462-k');

insert into negocio.vendedor (nombre,rut) values ('cristian rojas','18.427.357-4');

insert into negocio.compra (precioCompra,producto_id) values (1600,3);
insert into negocio.compra (precioCompra,producto_id) values (1890,5);
insert into negocio.compra (precioCompra,producto_id) values (450,2);


insert into negocio.boleta (fecha,precioTotal,compra_id,vendedor_id,cliente_id) values ('2021-12-06',1600,1,1,1);
insert into negocio.boleta (fecha,precioTotal,compra_id,vendedor_id,cliente_id) values ('2021-12-06',1890,2,1,1);





















