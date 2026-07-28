import 'package:dart_mappable/dart_mappable.dart';
import 'package:reel_glass/features/movies/models/cast_member.dart';

part 'movie.mapper.dart';

@MappableClass()
class Movie with MovieMappable {
  const Movie({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.backdropPath,
    required this.overview,
    required this.releaseYear,
    required this.rating,
    required this.genres,
    required this.runtimeMinutes,
    required this.cast,
  });

  final int id;
  final String title;
  final String posterPath;
  final String backdropPath;
  final String overview;
  final int releaseYear;
  final double rating;
  final List<String> genres;
  final int runtimeMinutes;
  final List<CastMember> cast;
}
