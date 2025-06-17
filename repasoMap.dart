void main() {

  Map<String, int> puntajes = {};


  puntajes['Carlos'] = 85;
  puntajes['Ana'] = 92;
  puntajes['Luis'] = 78;
  puntajes['Marta'] = 88;

  
  print('Jugadores registrados:');
  for (var nombre in puntajes.keys) {
    print('- $nombre');
  }

  
  print('\nPuntaje de Ana: ${puntajes['Ana']}');

  puntajes['Luis'] = 95;
  print('\nNuevo puntaje de Luis: ${puntajes['Luis']}');

  puntajes['Pedro'] = 81;
  print('\nSe agregó a Pedro con puntaje ${puntajes['Pedro']}');

  puntajes.remove('Carlos');
  print('\nCarlos fue eliminado del mapa.');

  print('\nContenido actualizado del ranking:');
  puntajes.forEach((nombre, puntaje) {
    print('$nombre: $puntaje');
  });
}
