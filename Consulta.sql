

SELECT boleta.precioTotal,boleta.vendedor_id,boleta.fecha,cliente.nombre
FROM negocio.cliente
left JOIN negocio.boleta on negocio.cliente.cliente_id = negocio.boleta.cliente_id;

SELECT factura.factura_id,factura.precioProveedor,proveedor.nombre
FROM negocio.factura
left JOIN negocio.proveedor on negocio.proveedor.proveedor_id = negocio.factura.proveedor_id;
