import 'package:hive/hive.dart';
import 'package:rick_and_morty/data/model/character_adapter/character_adapter.dart';
import 'package:rick_and_morty/data/model/mapper/character_hive_mapper.dart';
import 'package:rick_and_morty/data/model/mapper/character_mapepr.dart';
import 'package:rick_and_morty/domain/entity/character.dart';

import 'local_data_source.dart';

class LocalDataSourceImpl implements LocalDataSource {
  final Box<CharacterHive> favoritesBox;

  LocalDataSourceImpl(this.favoritesBox);

  @override
  Future<List<Character>> getFavorites() async {
    return favoritesBox.values.map((e) => e.toDomain()).toList();
  }

  @override
  Future<void> removeFavorite(Character character) async {
    await favoritesBox.delete(character.id);
  }

  @override
  Future<void> saveFavorite(Character character) async {
    await favoritesBox.put(character.id, character.toHiveModel());
  }
}
