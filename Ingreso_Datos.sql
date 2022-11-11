
insert into negocio.cliente (nombre,rut) values ('jaime alamos','16.317.462-k');
insert into negocio.cliente (nombre,rut) values ('Pablito Pesadilla','17.193.417-5');
insert into negocio.cliente (nombre,rut) values ('Loco Rene','10.416.628-2');


insert into negocio.proveedor (nombre,rut) values ('Pedro Perez', '14.517.431-2');
insert into negocio.proveedor (nombre,rut) values ('Juan Diaz', '17.497.491-7');
insert into negocio.proveedor (nombre,rut) values ('Maria Mendez', '16.762.914-2');

insert into negocio.categoria (nombreCategoria) values ('snack');
insert into negocio.categoria (nombreCategoria) values ('articulo aseo');
insert into negocio.categoria (nombreCategoria) values ('jugos y bebidas');
insert into negocio.categoria (nombreCategoria) values ('frutas y verduras');


insert into negocio.producto (nombre,precioVenta,precioCompra,stock,categoria_id,proveedor_id)values ('cryspo',1600,800,20,1,1);
insert into negocio.producto (nombre,precioVenta,precioCompra,stock,categoria_id,proveedor_id)values ('esponja',800,200,15,2,2);
insert into negocio.producto (nombre,precioVenta,precioCompra,stock,categoria_id,proveedor_id)values ('tomate',1700,1000,10,4,3);
insert into negocio.producto (nombre,precioVenta,precioCompra,stock,categoria_id,proveedor_id)values ('bolsa basura',400,80,6,2,2);
insert into negocio.producto (nombre,precioVenta,precioCompra,stock,categoria_id,proveedor_id)values ('ramitas',1700,900,8,1,1);
insert into negocio.producto (nombre,precioVenta,precioCompra,stock,categoria_id,proveedor_id)values ('coca cola 2 lt',1400,800,12,3,1);

insert into negocio.boleta (fecha,cliente_id) values ('2022-01-15',1);
insert into negocio.boleta (fecha,cliente_id) values ('2022-12-29',2);
insert into negocio.boleta (fecha,cliente_id) values ('2022-06-03',3);



insert into negocio.detalleBoleta (cantidadProducto,precioBoleta,producto_id,boleta_id) values (2,3200,1,2);
insert into negocio.detalleBoleta (cantidadProducto,precioBoleta,producto_id,boleta_id) values (1,1400,6,2);

insert into negocio.detalleBoleta (cantidadProducto,precioBoleta,producto_id,boleta_id) values (1,800,2,1);
insert into negocio.detalleBoleta (cantidadProducto,precioBoleta,producto_id,boleta_id) values (3,1200,4,1);

insert into negocio.detalleBoleta (cantidadProducto,precioBoleta,producto_id,boleta_id) values (2,3400,5,3);






























