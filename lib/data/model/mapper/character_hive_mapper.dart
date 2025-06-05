import 'package:rick_and_morty/data/model/character_adapter/character_adapter.dart';
import 'package:rick_and_morty/domain/entity/character.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';

extension CharacterHiveMapper on CharacterHive{
  Character toDomain() => Character(
    id: id,
    name: name,
    status: CharacterStatus.values.firstWhere((e) => e.name == status, orElse: () => CharacterStatus.unknown),
    species: species,
    type: type,
    gender: CharacterGender.values.firstWhere((element) => element.name == status, orElse: () => CharacterGender.unknown),
    originName: originName,
    originUrl: originUrl,
    locationName: locationName,
    locationUrl: locationUrl,
    image: image,
    episode: episode,
    url: url,
    created: created,
  );

}