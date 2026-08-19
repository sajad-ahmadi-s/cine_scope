import 'package:cine_scope/features/movies/models/movie.dart';

class MovieFilter {
  static List<Movie> byGenres(List<Movie> movies, List<String> genres) {
    if (genres.isEmpty) {
      return movies;
    }

    return movies
        .where((movie) => genres.every(movie.genres.contains))
        .toList();
  }
}
