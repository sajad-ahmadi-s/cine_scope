import 'package:reel_glass/features/movies/data/mock_data.dart';
import 'package:reel_glass/features/movies/models/models.dart';

class MoviesRepository {
  List<Movie> getMovies() {
    return movies;
  }
}
