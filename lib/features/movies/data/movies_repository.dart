import 'package:cine_scope/features/movies/data/mock_data.dart';
import 'package:cine_scope/features/movies/models/models.dart';

class MoviesRepository {
  List<Movie> getMovies() {
    return movies;
  }
}
