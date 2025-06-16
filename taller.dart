class Taller {
  static const String nombre = "Taller Pepito";
  static String mensajeGeneral = "Bienvenidos";
  static int _totalReparacion = 0;

  static void cambiarMensaje(String mensaje) {
    mensajeGeneral = mensaje;
  }

  static void incrementarContador() {
    _totalReparacion++;
  }

  static int obtenerReparaciones(){
    return _totalReparacion;
  }
}

class Empleado{
  final String nombre;

  Empleado(this.nombre);

  void actualizarMensajeTaller(String mensaje){
    Taller.cambiarMensaje(mensaje);
  }
}



class Vehiculo{
  final String placa;
  String? diagnostico;
  String estado="Pendiente";
  dynamic extraInfo;

  void registrarDiagnostico(){
    estado="Reparado";
    Taller.incrementarContador();
  }

  void resumen(){
    print(placa);
    print(diagnostico);
    print(estado);
    print(extraInfo);
    print(Taller.mensajeGeneral);
    print(Taller.nombre);
  }
  Vehiculo(this.placa);
}

void main(){
  final empleado1=Empleado("Carlos");
  Taller.cambiarMensaje("Mensaje nuevo");
  final vehiculo1=Vehiculo("PLACA1");
  final vehiculo2=Vehiculo("PLACA2");
  vehiculo1.registrarDiagnostico();
  vehiculo2.registrarDiagnostico();
  vehiculo1.extraInfo="Probando";
  vehiculo2.extraInfo=3.5;


  print(empleado1.nombre);
  print(Taller.mensajeGeneral);
  print(vehiculo1.placa);
  print(vehiculo2.placa);
  vehiculo1.registrarDiagnostico;
  print(vehiculo1.estado);
  vehiculo2.registrarDiagnostico;
  print(vehiculo2.estado);
  print(vehiculo1.extraInfo);
  print(vehiculo2.extraInfo);
  print(Taller.obtenerReparaciones());

}
