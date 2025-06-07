import 'package:hive/hive.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';
part 'character_adapter.g.dart';


@HiveType(typeId: 1)
class CharacterHive extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String status;

  @HiveField(3)
  final String species;

  @HiveField(4)
  final String type;

  @HiveField(5)
  final String gender;

  @HiveField(6)
  final String originName;

  @HiveField(7)
  final String originUrl;

  @HiveField(8)
  final String locationName;

  @HiveField(9)
  final String locationUrl;

  @HiveField(10)
  final String image;

  @HiveField(11)
  final List<String> episode;

  @HiveField(12)
  final String url;

  @HiveField(13)
  final DateTime created;

  CharacterHive({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.originName,
    required this.originUrl,
    required this.locationName,
    required this.locationUrl,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });
}
