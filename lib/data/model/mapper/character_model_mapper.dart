import 'package:rick_and_morty/data/model/character/character_model.dart';
import 'package:rick_and_morty/domain/entity/character.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';

extension CharacterModelMapper on CharacterModel {
  Character toDomain() => Character(
        id: id,
        name: name,
        status: CharacterStatus.values.firstWhere((element) => element.name == status, orElse: () => CharacterStatus.unknown),
        species: species,
        type: type,
        gender: CharacterGender.values.firstWhere((element) => element.name == gender, orElse: () => CharacterGender.unknown),
        originName: origin.name,
        originUrl: origin.url,
        locationName: location.name,
        locationUrl: location.url,
        image: image,
        episode: episode,
        url: url,
        created: created,
      );

}
