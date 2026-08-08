import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:reel_glass/features/movies/data/movies_repository.dart';
import 'package:reel_glass/features/movies/logic/movie_filter.dart';
import 'package:reel_glass/features/movies/models/models.dart';
import 'package:reel_glass/features/movies/models/movies_query.dart';

part 'movies_cubit.mapper.dart';
part 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit({required MoviesRepository repository})
    : _repository = repository,
      super(const MoviesState());

  final MoviesRepository _repository;

  void getMovies() {
    emit(const MoviesState(status: MoviesStatus.loading));
    try {
      final movies = _repository.getMovies();
      emit(
        MoviesState(
          status: MoviesStatus.sucess,
          movies: movies,
          displayedMovies: movies,
        ),
      );
    } catch (e) {
      emit(
        MoviesState(status: MoviesStatus.failure, errorMessage: e.toString()),
      );
    }
  }

  void toggleGenre(String genre) {
    final selectedGenres = [...state.query.genres];

    if (selectedGenres.contains(genre)) {
      selectedGenres.remove(genre);
    } else {
      selectedGenres.add(genre);
    }

    final displayedMovies = MovieFilter.byGenres(state.movies, selectedGenres);

    emit(
      state.copyWith(
        query: state.query.copyWith(genres: selectedGenres),
        displayedMovies: displayedMovies,
      ),
    );
  }

  void clearGenreFilters() {
    emit(
      state.copyWith(
        query: state.query.copyWith(genres: const []),
        displayedMovies: state.movies,
      ),
    );
  }
}
