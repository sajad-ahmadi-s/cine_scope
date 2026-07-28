import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:reel_glass/features/movies/data/movies_repository.dart';
import 'package:reel_glass/features/movies/models/models.dart';

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
      emit(MoviesState(status: MoviesStatus.loaded, movies: movies));
    } catch (e) {
      emit(MoviesState(status: MoviesStatus.error, errorMessage: e.toString()));
    }
  }
}
