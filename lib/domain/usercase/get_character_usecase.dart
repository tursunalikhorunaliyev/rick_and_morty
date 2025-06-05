import 'package:rick_and_morty/domain/entity/character.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';
import 'package:rick_and_morty/domain/repository/character_repository.dart';
import 'package:string_capitalize/string_capitalize.dart';

class GetCharacterUseCase {
  final CharacterRepository characterRepository;

  GetCharacterUseCase({required this.characterRepository});

  Future<List<Character>> call({String? name, CharacterStatus? status, String? species, String? type, CharacterGender? gender, required int page}) async {
    return await characterRepository.getCharacters(name: name, status: status?.name.capitalize(), species: species, type: type, gender: gender?.name.capitalize(), page: page);
  }
}
