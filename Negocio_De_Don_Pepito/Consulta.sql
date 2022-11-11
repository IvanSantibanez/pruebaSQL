
use negocio;
SELECT boleta.boleta_id,boleta.fecha,cliente.nombre,producto.nombre,detalleBoleta.cantidadProducto,detalleBoleta.precioBoleta
FROM negocio.cliente
inner JOIN negocio.boleta on boleta.cliente_id = cliente.cliente_id
inner join detalleBoleta on detalleBoleta.boleta_id = boleta.boleta_id
inner join producto on producto.producto_id = detalleBoleta.producto_id;

