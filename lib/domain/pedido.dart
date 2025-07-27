/// Entidad Pedido
class Pedido {
  final String id;
  final List<Producto> productos;
  final double total;

  Pedido({required this.id, required this.productos, required this.total});
}
