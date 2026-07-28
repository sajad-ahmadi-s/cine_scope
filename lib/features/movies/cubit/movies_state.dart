part of 'movies_cubit.dart';

@MappableEnum()
enum MoviesStatus { loading, loaded, error }

@MappableClass()
class MoviesState with MoviesStateMappable {
  const MoviesState({
    this.status = MoviesStatus.loading,
    this.movies = const [],
    this.errorMessage = '',
  });

  final MoviesStatus status;
  final List<Movie> movies;
  final String errorMessage;
}
