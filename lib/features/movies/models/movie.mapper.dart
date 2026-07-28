// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie.dart';

class MovieMapper extends ClassMapperBase<Movie> {
  MovieMapper._();

  static MovieMapper? _instance;
  static MovieMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Movie';

  static String _$id(Movie v) => v.id;
  static const Field<Movie, String> _f$id = Field('id', _$id);
  static String _$title(Movie v) => v.title;
  static const Field<Movie, String> _f$title = Field('title', _$title);
  static String _$posterPath(Movie v) => v.posterPath;
  static const Field<Movie, String> _f$posterPath = Field(
    'posterPath',
    _$posterPath,
  );
  static String _$backdropPath(Movie v) => v.backdropPath;
  static const Field<Movie, String> _f$backdropPath = Field(
    'backdropPath',
    _$backdropPath,
  );
  static String _$overview(Movie v) => v.overview;
  static const Field<Movie, String> _f$overview = Field('overview', _$overview);
  static int _$releaseYear(Movie v) => v.releaseYear;
  static const Field<Movie, int> _f$releaseYear = Field(
    'releaseYear',
    _$releaseYear,
  );
  static double _$rating(Movie v) => v.rating;
  static const Field<Movie, double> _f$rating = Field('rating', _$rating);
  static List<String> _$genres(Movie v) => v.genres;
  static const Field<Movie, List<String>> _f$genres = Field('genres', _$genres);
  static int _$runtimeMinutes(Movie v) => v.runtimeMinutes;
  static const Field<Movie, int> _f$runtimeMinutes = Field(
    'runtimeMinutes',
    _$runtimeMinutes,
  );
  static List<String> _$cast(Movie v) => v.cast;
  static const Field<Movie, List<String>> _f$cast = Field('cast', _$cast);

  @override
  final MappableFields<Movie> fields = const {
    #id: _f$id,
    #title: _f$title,
    #posterPath: _f$posterPath,
    #backdropPath: _f$backdropPath,
    #overview: _f$overview,
    #releaseYear: _f$releaseYear,
    #rating: _f$rating,
    #genres: _f$genres,
    #runtimeMinutes: _f$runtimeMinutes,
    #cast: _f$cast,
  };

  static Movie _instantiate(DecodingData data) {
    return Movie(
      id: data.dec(_f$id),
      title: data.dec(_f$title),
      posterPath: data.dec(_f$posterPath),
      backdropPath: data.dec(_f$backdropPath),
      overview: data.dec(_f$overview),
      releaseYear: data.dec(_f$releaseYear),
      rating: data.dec(_f$rating),
      genres: data.dec(_f$genres),
      runtimeMinutes: data.dec(_f$runtimeMinutes),
      cast: data.dec(_f$cast),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Movie fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Movie>(map);
  }

  static Movie fromJson(String json) {
    return ensureInitialized().decodeJson<Movie>(json);
  }
}

mixin MovieMappable {
  String toJson() {
    return MovieMapper.ensureInitialized().encodeJson<Movie>(this as Movie);
  }

  Map<String, dynamic> toMap() {
    return MovieMapper.ensureInitialized().encodeMap<Movie>(this as Movie);
  }

  MovieCopyWith<Movie, Movie, Movie> get copyWith =>
      _MovieCopyWithImpl<Movie, Movie>(this as Movie, $identity, $identity);
  @override
  String toString() {
    return MovieMapper.ensureInitialized().stringifyValue(this as Movie);
  }

  @override
  bool operator ==(Object other) {
    return MovieMapper.ensureInitialized().equalsValue(this as Movie, other);
  }

  @override
  int get hashCode {
    return MovieMapper.ensureInitialized().hashValue(this as Movie);
  }
}

extension MovieValueCopy<$R, $Out> on ObjectCopyWith<$R, Movie, $Out> {
  MovieCopyWith<$R, Movie, $Out> get $asMovie =>
      $base.as((v, t, t2) => _MovieCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MovieCopyWith<$R, $In extends Movie, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get genres;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get cast;
  $R call({
    String? id,
    String? title,
    String? posterPath,
    String? backdropPath,
    String? overview,
    int? releaseYear,
    double? rating,
    List<String>? genres,
    int? runtimeMinutes,
    List<String>? cast,
  });
  MovieCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MovieCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Movie, $Out>
    implements MovieCopyWith<$R, Movie, $Out> {
  _MovieCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Movie> $mapper = MovieMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get genres =>
      ListCopyWith(
        $value.genres,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(genres: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get cast =>
      ListCopyWith(
        $value.cast,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(cast: v),
      );
  @override
  $R call({
    String? id,
    String? title,
    String? posterPath,
    String? backdropPath,
    String? overview,
    int? releaseYear,
    double? rating,
    List<String>? genres,
    int? runtimeMinutes,
    List<String>? cast,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (title != null) #title: title,
      if (posterPath != null) #posterPath: posterPath,
      if (backdropPath != null) #backdropPath: backdropPath,
      if (overview != null) #overview: overview,
      if (releaseYear != null) #releaseYear: releaseYear,
      if (rating != null) #rating: rating,
      if (genres != null) #genres: genres,
      if (runtimeMinutes != null) #runtimeMinutes: runtimeMinutes,
      if (cast != null) #cast: cast,
    }),
  );
  @override
  Movie $make(CopyWithData data) => Movie(
    id: data.get(#id, or: $value.id),
    title: data.get(#title, or: $value.title),
    posterPath: data.get(#posterPath, or: $value.posterPath),
    backdropPath: data.get(#backdropPath, or: $value.backdropPath),
    overview: data.get(#overview, or: $value.overview),
    releaseYear: data.get(#releaseYear, or: $value.releaseYear),
    rating: data.get(#rating, or: $value.rating),
    genres: data.get(#genres, or: $value.genres),
    runtimeMinutes: data.get(#runtimeMinutes, or: $value.runtimeMinutes),
    cast: data.get(#cast, or: $value.cast),
  );

  @override
  MovieCopyWith<$R2, Movie, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MovieCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

