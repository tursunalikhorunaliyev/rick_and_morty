import 'package:rick_and_morty/data/model/mapper/character_model_mapper.dart';
import 'package:rick_and_morty/data/service/source/local/local_data_source.dart';
import 'package:rick_and_morty/data/service/source/local/local_data_source_impl.dart';
import 'package:rick_and_morty/data/service/source/remote/rest/character_api_service.dart';
import 'package:rick_and_morty/domain/entity/character.dart';
import 'package:rick_and_morty/domain/repository/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository{

  final CharacterApiService apiService;
  final LocalDataSource localDataSource;

  CharacterRepositoryImpl({required this.apiService, required this.localDataSource});

  @override
  Future<List<Character>> getCharacters({String? name, String? status, String? species, String? type, String? gender, required int page}) async{
    final response = await apiService.getCharacters(page: page);
    return response.results.map((e) => e.toDomain()).toList();
  }

  @override
  Future<bool> addToFavorite(Character character) {
    // TODO: implement addToFavorite
    throw UnimplementedError();
  }

  @override
  Future<bool> removeFromFavorite(Character character) {
    // TODO: implement removeFromFavorite
    throw UnimplementedError();
  }

  @override
  Future<List<Character>> allFavoriteCharacters() {
    return localDataSource.getFavorites();
  }
}