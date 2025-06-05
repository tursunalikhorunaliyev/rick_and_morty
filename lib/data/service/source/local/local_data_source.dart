
import 'package:rick_and_morty/domain/entity/character.dart';

abstract class LocalDataSource{
  Future<void> saveFavorite(Character character);
  Future<void> removeFavorite(int id);
  Future<List<Character>> getFavorites();
}