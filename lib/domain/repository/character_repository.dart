import 'package:rick_and_morty/domain/entity/character.dart';

abstract class CharacterRepository{
  Future<(List<Character>, int)> getCharacters({String? name, String? status, String? gender,required int page});
  Future<void> addToFavorite(Character character);
  Future<void> removeFromFavorite(Character character);
  Future<List<Character>> allFavoriteCharacters();
}