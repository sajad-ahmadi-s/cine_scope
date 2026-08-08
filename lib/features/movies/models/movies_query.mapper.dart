// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_query.dart';

class MoviesQueryMapper extends ClassMapperBase<MoviesQuery> {
  MoviesQueryMapper._();

  static MoviesQueryMapper? _instance;
  static MoviesQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MoviesQueryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesQuery';

  static List<String> _$genres(MoviesQuery v) => v.genres;
  static const Field<MoviesQuery, List<String>> _f$genres = Field(
    'genres',
    _$genres,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<MoviesQuery> fields = const {#genres: _f$genres};

  static MoviesQuery _instantiate(DecodingData data) {
    return MoviesQuery(genres: data.dec(_f$genres));
  }

  @override
  final Function instantiate = _instantiate;

  static MoviesQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MoviesQuery>(map);
  }

  static MoviesQuery fromJson(String json) {
    return ensureInitialized().decodeJson<MoviesQuery>(json);
  }
}

mixin MoviesQueryMappable {
  String toJson() {
    return MoviesQueryMapper.ensureInitialized().encodeJson<MoviesQuery>(
      this as MoviesQuery,
    );
  }

  Map<String, dynamic> toMap() {
    return MoviesQueryMapper.ensureInitialized().encodeMap<MoviesQuery>(
      this as MoviesQuery,
    );
  }

  MoviesQueryCopyWith<MoviesQuery, MoviesQuery, MoviesQuery> get copyWith =>
      _MoviesQueryCopyWithImpl<MoviesQuery, MoviesQuery>(
        this as MoviesQuery,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MoviesQueryMapper.ensureInitialized().stringifyValue(
      this as MoviesQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return MoviesQueryMapper.ensureInitialized().equalsValue(
      this as MoviesQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return MoviesQueryMapper.ensureInitialized().hashValue(this as MoviesQuery);
  }
}

extension MoviesQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesQuery, $Out> {
  MoviesQueryCopyWith<$R, MoviesQuery, $Out> get $asMoviesQuery =>
      $base.as((v, t, t2) => _MoviesQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MoviesQueryCopyWith<$R, $In extends MoviesQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get genres;
  $R call({List<String>? genres});
  MoviesQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MoviesQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesQuery, $Out>
    implements MoviesQueryCopyWith<$R, MoviesQuery, $Out> {
  _MoviesQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesQuery> $mapper =
      MoviesQueryMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get genres =>
      ListCopyWith(
        $value.genres,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(genres: v),
      );
  @override
  $R call({List<String>? genres}) =>
      $apply(FieldCopyWithData({if (genres != null) #genres: genres}));
  @override
  MoviesQuery $make(CopyWithData data) =>
      MoviesQuery(genres: data.get(#genres, or: $value.genres));

  @override
  MoviesQueryCopyWith<$R2, MoviesQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MoviesQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

