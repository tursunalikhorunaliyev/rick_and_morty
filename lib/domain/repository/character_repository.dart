import 'package:rick_and_morty/domain/entity/character.dart';

abstract class CharacterRepository{
  Future<List<Character>> getCharacters({String? name, String? status, String? species, String? type, String? gender,required int page});
  Future<bool> addToFavorite(Character character);
  Future<bool> removeFromFavorite(Character character);
  Future<List<Character>> allFavoriteCharacters();
}