import 'package:dart_mappable/dart_mappable.dart';

part 'movies_query.mapper.dart';

@MappableClass()
class MoviesQuery with MoviesQueryMappable {
  const MoviesQuery({this.genres = const []});

  final List<String> genres;
}
