part of 'movies_cubit.dart';

@MappableEnum()
enum MoviesStatus { loading, sucess, failure }

@MappableClass()
class MoviesState with MoviesStateMappable {
  const MoviesState({
    this.status = MoviesStatus.loading,
    this.movies = const [],
    this.displayedMovies = const [],
    this.query = const MoviesQuery(),
    this.errorMessage = '',
  });

  final MoviesStatus status;
  final List<Movie> movies;
  final List<Movie> displayedMovies;
  final MoviesQuery query;
  final String errorMessage;

  List<String> get genres {
    return movies.expand((movie) => movie.genres).toSet().toList()..sort();
  }
}
