import 'package:rick_and_morty/domain/entity/character.dart';
import 'package:rick_and_morty/domain/repository/character_repository.dart';

class AddToFavoriteUseCase {
  final CharacterRepository characterRepository;

  AddToFavoriteUseCase({required this.characterRepository});

  Future<List<Character>> call(Character character) async {
    await characterRepository.removeFromFavorite(character);
    return characterRepository.allFavoriteCharacters();
  }
}
