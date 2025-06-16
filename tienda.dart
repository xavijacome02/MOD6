class Tienda {
  static const String nombre = "KRAKEDEV Store";
  static String anuncio = "Bienvenido a nuestra tienda";
  static int _productosVendidos = 0;

  static void cambiarAnuncio(String nuevoAnuncio) {
    anuncio = nuevoAnuncio;
  }

  static void aumentarVentas() {
    _productosVendidos++;
  }

  static int obtenerVentas() {
    return _productosVendidos;
  }
}

class Producto {
  final String codigo;
  String? descripcion;
  double? precio;
  dynamic observacion;
  String estado = "Sin vender";

  Producto(this.codigo);

  void registrarVenta(String desc, double nuevoPrecio, dynamic obs) {
    descripcion = desc;
    precio = nuevoPrecio;
    observacion = obs;
    estado = "Vendido";
    Tienda.aumentarVentas();
  }

  void resumen() {
    print(codigo);
    print(descripcion);
    print(precio);
    print(observacion);
    print(estado);
    print(Tienda.nombre);
    print(Tienda.anuncio);
    print("---------------------------");
  }
}

void main() {
  Tienda.cambiarAnuncio("Ofertas limitadas hoy!");
  Producto producto1 = Producto("A001");
  Producto producto2 = Producto("A002");

  producto1.registrarVenta("Audifonos inalambricos", 29.99, "Color negro");
  producto2.registrarVenta("Mouse gamer", 19.50, "Con luces LED");
  producto1.resumen();
  producto2.resumen();

  print("Total productos vendidos: ${Tienda.obtenerVentas()}");
}
