void main() {
  print("Estoy en la cocina");
  hervirAgua();
  print("Empiezo a barrer la casa");
}

Future<String> hervir() {
  return Future.delayed(Duration(seconds: 5), () => "El agua ya hirvió");
}

void hervirAgua() async {
  print("Puse el agua en la olla y encendi la cocina");
  final resultado = await hervir();
  print(resultado);
  print("Puedo preparar café con pan!");
}
