// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movies_cubit.dart';

class MoviesStatusMapper extends EnumMapper<MoviesStatus> {
  MoviesStatusMapper._();

  static MoviesStatusMapper? _instance;
  static MoviesStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MoviesStatusMapper._());
    }
    return _instance!;
  }

  static MoviesStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MoviesStatus decode(dynamic value) {
    switch (value) {
      case r'loading':
        return MoviesStatus.loading;
      case r'loaded':
        return MoviesStatus.loaded;
      case r'error':
        return MoviesStatus.error;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MoviesStatus self) {
    switch (self) {
      case MoviesStatus.loading:
        return r'loading';
      case MoviesStatus.loaded:
        return r'loaded';
      case MoviesStatus.error:
        return r'error';
    }
  }
}

extension MoviesStatusMapperExtension on MoviesStatus {
  String toValue() {
    MoviesStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MoviesStatus>(this) as String;
  }
}

class MoviesStateMapper extends ClassMapperBase<MoviesState> {
  MoviesStateMapper._();

  static MoviesStateMapper? _instance;
  static MoviesStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MoviesStateMapper._());
      MoviesStatusMapper.ensureInitialized();
      MovieMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MoviesState';

  static MoviesStatus _$status(MoviesState v) => v.status;
  static const Field<MoviesState, MoviesStatus> _f$status = Field(
    'status',
    _$status,
    opt: true,
    def: MoviesStatus.loading,
  );
  static List<Movie> _$movies(MoviesState v) => v.movies;
  static const Field<MoviesState, List<Movie>> _f$movies = Field(
    'movies',
    _$movies,
    opt: true,
    def: const [],
  );
  static String _$errorMessage(MoviesState v) => v.errorMessage;
  static const Field<MoviesState, String> _f$errorMessage = Field(
    'errorMessage',
    _$errorMessage,
    opt: true,
    def: '',
  );

  @override
  final MappableFields<MoviesState> fields = const {
    #status: _f$status,
    #movies: _f$movies,
    #errorMessage: _f$errorMessage,
  };

  static MoviesState _instantiate(DecodingData data) {
    return MoviesState(
      status: data.dec(_f$status),
      movies: data.dec(_f$movies),
      errorMessage: data.dec(_f$errorMessage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MoviesState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MoviesState>(map);
  }

  static MoviesState fromJson(String json) {
    return ensureInitialized().decodeJson<MoviesState>(json);
  }
}

mixin MoviesStateMappable {
  String toJson() {
    return MoviesStateMapper.ensureInitialized().encodeJson<MoviesState>(
      this as MoviesState,
    );
  }

  Map<String, dynamic> toMap() {
    return MoviesStateMapper.ensureInitialized().encodeMap<MoviesState>(
      this as MoviesState,
    );
  }

  MoviesStateCopyWith<MoviesState, MoviesState, MoviesState> get copyWith =>
      _MoviesStateCopyWithImpl<MoviesState, MoviesState>(
        this as MoviesState,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MoviesStateMapper.ensureInitialized().stringifyValue(
      this as MoviesState,
    );
  }

  @override
  bool operator ==(Object other) {
    return MoviesStateMapper.ensureInitialized().equalsValue(
      this as MoviesState,
      other,
    );
  }

  @override
  int get hashCode {
    return MoviesStateMapper.ensureInitialized().hashValue(this as MoviesState);
  }
}

extension MoviesStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MoviesState, $Out> {
  MoviesStateCopyWith<$R, MoviesState, $Out> get $asMoviesState =>
      $base.as((v, t, t2) => _MoviesStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MoviesStateCopyWith<$R, $In extends MoviesState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Movie, MovieCopyWith<$R, Movie, Movie>> get movies;
  $R call({MoviesStatus? status, List<Movie>? movies, String? errorMessage});
  MoviesStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MoviesStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MoviesState, $Out>
    implements MoviesStateCopyWith<$R, MoviesState, $Out> {
  _MoviesStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MoviesState> $mapper =
      MoviesStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Movie, MovieCopyWith<$R, Movie, Movie>> get movies =>
      ListCopyWith(
        $value.movies,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(movies: v),
      );
  @override
  $R call({MoviesStatus? status, List<Movie>? movies, String? errorMessage}) =>
      $apply(
        FieldCopyWithData({
          if (status != null) #status: status,
          if (movies != null) #movies: movies,
          if (errorMessage != null) #errorMessage: errorMessage,
        }),
      );
  @override
  MoviesState $make(CopyWithData data) => MoviesState(
    status: data.get(#status, or: $value.status),
    movies: data.get(#movies, or: $value.movies),
    errorMessage: data.get(#errorMessage, or: $value.errorMessage),
  );

  @override
  MoviesStateCopyWith<$R2, MoviesState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MoviesStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

