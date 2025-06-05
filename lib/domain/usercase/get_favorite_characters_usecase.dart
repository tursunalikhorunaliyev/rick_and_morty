import 'package:rick_and_morty/domain/entity/character.dart';
import 'package:rick_and_morty/domain/repository/character_repository.dart';

class GetFavoriteCharactersUseCase {
  final CharacterRepository characterRepository;

  GetFavoriteCharactersUseCase({required this.characterRepository});


  Future<List<Character>> call() async{
    return await characterRepository.allFavoriteCharacters();
  }

}