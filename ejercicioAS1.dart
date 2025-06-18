void main() {
  print("Encendo mi computadora");
  descargarArchivo();
  print("Abro mi correo y empiezo a responder mensajes");
}

Future<String> simularDescarga() {
  return Future.delayed(Duration(seconds: 4), () => "Archivo descargado con éxito");
}

void descargarArchivo() async {
  print("Iniciando descarga de archivo...");
  final resultado = await simularDescarga();
  print(resultado);
  print("Ahora puedo abrir el archivo");
}
