import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_and_morty/data/model/character/character_model.dart';

part 'character_api_service.g.dart';

@RestApi(baseUrl: "https://rickandmortyapi.com/api")
abstract class CharacterApiService {
  factory CharacterApiService(Dio dio, {String baseUrl}) = _CharacterApiService;

  @GET("/character")
  Future<CharacterResponse> getCharacters({
    @Query("name") String? name,
    @Query("status") String? status,
    @Query("species") String? species,
    @Query("type") String? type,
    @Query("gender") String? gender,
    @Query("page") int? page,
  });
}
