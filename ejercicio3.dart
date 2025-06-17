class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);

  @override
  String toString() {
    return '$titulo ($anioEstreno)';
  }
}

void main() {
  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [],
    'HBO': [],
    'Disney+': [],
  };

  catalogoStreaming['Netflix']!.addAll([
    Pelicula('Stranger Things', 2016),
    Pelicula('The Witcher', 2019),
  ]);

  catalogoStreaming['HBO']!.addAll([
    Pelicula('Game of Thrones', 2011),
    Pelicula('The Last of Us', 2023),
  ]);

  catalogoStreaming['Disney+']!.addAll([
    Pelicula('Luca', 2021),
    Pelicula('Encanto', 2021),
  ]);

  print('Películas en Netflix:');
  for (var pelicula in catalogoStreaming['Netflix']!) {
    print('- ${pelicula.titulo}');
  }

  catalogoStreaming['Disney+']!.add(Pelicula('Elemental', 2023));
  catalogoStreaming['HBO']![1].anioEstreno = 2024;
  catalogoStreaming['Netflix']!.removeAt(0);

  print('\nCatálogo completo actualizado:\n');
  catalogoStreaming.forEach((plataforma, peliculas) {
    print('Plataforma: $plataforma');
    for (var pelicula in peliculas) {
      print('- $pelicula');
    }
    print('');
  });
}
