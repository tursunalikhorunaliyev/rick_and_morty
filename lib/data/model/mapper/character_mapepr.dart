
import 'package:rick_and_morty/data/model/character_adapter/character_adapter.dart';
import 'package:rick_and_morty/domain/entity/character.dart';

extension CharacterMapper on Character {
  CharacterHive toHiveModel() {
    return CharacterHive(
      id: id,
      name: name,
      status: status.name,
      species: species,
      type: type,
      gender: gender.name,
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
}
