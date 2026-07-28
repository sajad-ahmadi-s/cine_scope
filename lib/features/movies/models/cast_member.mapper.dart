// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cast_member.dart';

class CastMemberMapper extends ClassMapperBase<CastMember> {
  CastMemberMapper._();

  static CastMemberMapper? _instance;
  static CastMemberMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CastMemberMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CastMember';

  static String _$name(CastMember v) => v.name;
  static const Field<CastMember, String> _f$name = Field('name', _$name);
  static String _$character(CastMember v) => v.character;
  static const Field<CastMember, String> _f$character = Field(
    'character',
    _$character,
  );
  static String _$photoPath(CastMember v) => v.photoPath;
  static const Field<CastMember, String> _f$photoPath = Field(
    'photoPath',
    _$photoPath,
  );

  @override
  final MappableFields<CastMember> fields = const {
    #name: _f$name,
    #character: _f$character,
    #photoPath: _f$photoPath,
  };

  static CastMember _instantiate(DecodingData data) {
    return CastMember(
      name: data.dec(_f$name),
      character: data.dec(_f$character),
      photoPath: data.dec(_f$photoPath),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CastMember fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CastMember>(map);
  }

  static CastMember fromJson(String json) {
    return ensureInitialized().decodeJson<CastMember>(json);
  }
}

mixin CastMemberMappable {
  String toJson() {
    return CastMemberMapper.ensureInitialized().encodeJson<CastMember>(
      this as CastMember,
    );
  }

  Map<String, dynamic> toMap() {
    return CastMemberMapper.ensureInitialized().encodeMap<CastMember>(
      this as CastMember,
    );
  }

  CastMemberCopyWith<CastMember, CastMember, CastMember> get copyWith =>
      _CastMemberCopyWithImpl<CastMember, CastMember>(
        this as CastMember,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CastMemberMapper.ensureInitialized().stringifyValue(
      this as CastMember,
    );
  }

  @override
  bool operator ==(Object other) {
    return CastMemberMapper.ensureInitialized().equalsValue(
      this as CastMember,
      other,
    );
  }

  @override
  int get hashCode {
    return CastMemberMapper.ensureInitialized().hashValue(this as CastMember);
  }
}

extension CastMemberValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CastMember, $Out> {
  CastMemberCopyWith<$R, CastMember, $Out> get $asCastMember =>
      $base.as((v, t, t2) => _CastMemberCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CastMemberCopyWith<$R, $In extends CastMember, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? character, String? photoPath});
  CastMemberCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CastMemberCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CastMember, $Out>
    implements CastMemberCopyWith<$R, CastMember, $Out> {
  _CastMemberCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CastMember> $mapper =
      CastMemberMapper.ensureInitialized();
  @override
  $R call({String? name, String? character, String? photoPath}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (character != null) #character: character,
      if (photoPath != null) #photoPath: photoPath,
    }),
  );
  @override
  CastMember $make(CopyWithData data) => CastMember(
    name: data.get(#name, or: $value.name),
    character: data.get(#character, or: $value.character),
    photoPath: data.get(#photoPath, or: $value.photoPath),
  );

  @override
  CastMemberCopyWith<$R2, CastMember, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CastMemberCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

