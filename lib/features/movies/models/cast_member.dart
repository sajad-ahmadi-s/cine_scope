import 'package:dart_mappable/dart_mappable.dart';

part 'cast_member.mapper.dart';

@MappableClass()
class CastMember with CastMemberMappable {
  const CastMember({
    required this.name,
    required this.character,
    required this.photoPath,
  });

  final String name;
  final String character;
  final String photoPath;
}
