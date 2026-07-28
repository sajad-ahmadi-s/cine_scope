import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:reel_glass/features/movies/models/models.dart';

part 'movies_state.dart';
part 'movies_cubit.mapper.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(const MoviesState());
}
