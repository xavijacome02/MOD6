void main() {
  List<String> comidasFavoritas = [
    "Seco de pollo",
    "Guatita",
    "Papipollo",
    "Menestron",
    "Arroz con menestra",
  ];
  print(comidasFavoritas);
  comidasFavoritas.add("Seco de chivo");
  print(comidasFavoritas);
  comidasFavoritas.remove("Menestron");
  print(comidasFavoritas);
  print(comidasFavoritas[2]);

  List<List<String>> menuSemanal = [
    ['Pan con café', 'Arroz con pollo', 'Sopa'],
    ['Cereal', 'Pasta', 'Ensalada'],
    ['Huevos', 'Carne asada', 'Fruta'],
    ['Tostadas', 'Lentejas', 'Pizza'],
    ['Jugo', 'Hamburguesa', 'Empanada'],
    ['Tamales', 'Sancocho', 'Pastel'],
    ['Té', 'Pollo guisado', 'Helado'],
  ];

  print(menuSemanal[1][1]);

  menuSemanal[4][2] = "Tacos";
  print(menuSemanal);
  List<String> diasSemana = [
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
    'Domingo',
  ];

  for (int i = 0; i < menuSemanal.length; i++) {
    print('\n${diasSemana[i]}:');
    print('  Desayuno: ${menuSemanal[i][0]}');
    print('  Almuerzo: ${menuSemanal[i][1]}');
    print('  Cena: ${menuSemanal[i][2]}');
  }
}
