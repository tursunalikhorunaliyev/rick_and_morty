import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:rick_and_morty/data/model/character_adapter/character_adapter.dart';
import 'package:rick_and_morty/data/repository/character_repository_impl.dart';
import 'package:rick_and_morty/data/service/source/local/local_data_source.dart';
import 'package:rick_and_morty/data/service/source/local/local_data_source_impl.dart';
import 'package:rick_and_morty/data/service/source/remote/dio/dio_client.dart';
import 'package:rick_and_morty/data/service/source/remote/dio/dio_interceptor.dart';
import 'package:rick_and_morty/data/service/source/remote/rest/character_api_service.dart';
import 'package:rick_and_morty/domain/repository/character_repository.dart';
import 'package:rick_and_morty/domain/usercase/add_to_favorite_usecase.dart';
import 'package:rick_and_morty/domain/usercase/get_character_usecase.dart';
import 'package:rick_and_morty/domain/usercase/get_favorite_characters_usecase.dart';
import 'package:rick_and_morty/domain/usercase/remove_from_favorite_usecase.dart';
import 'package:rick_and_morty/presentation/bloc/character/character_bloc.dart';

final sl = GetIt.instance;

Future<void> setUp() async {


  //Hive
  final box = await Hive.openBox<CharacterHive>('favoritesBox');
  sl.registerLazySingleton<Box<CharacterHive>>(() => box);
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl(sl<Box<CharacterHive>>()));


  sl.registerLazySingleton<Dio>(() => Dio(BaseOptions(baseUrl: 'https://rickandmortyapi.com/api', connectTimeout: const Duration(seconds: 10), receiveTimeout: const Duration(seconds: 10))));
  sl.registerLazySingleton<DioInterceptor>(() => DioInterceptor());
  sl.registerLazySingleton<DioClient>(() => DioClient(sl<DioInterceptor>()));
  sl.registerLazySingleton<CharacterApiService>(() => CharacterApiService(sl<Dio>()));
  sl.registerLazySingleton<CharacterRepository>(() => CharacterRepositoryImpl(apiService: sl<CharacterApiService>(), localDataSource: sl<LocalDataSource>()));



  //USE CASES
  sl.registerLazySingleton<GetCharacterUseCase>(() => GetCharacterUseCase(characterRepository: sl<CharacterRepository>()));
  sl.registerLazySingleton<GetFavoriteCharactersUseCase>(() => GetFavoriteCharactersUseCase(characterRepository: sl<CharacterRepository>()));
  sl.registerLazySingleton<AddToFavoriteUseCase>(() => AddToFavoriteUseCase(characterRepository: sl<CharacterRepository>()));
  sl.registerLazySingleton<RemoveFromFavoriteUseCase>(() => RemoveFromFavoriteUseCase(characterRepository: sl<CharacterRepository>()));




  //BloC
  sl.registerLazySingleton<CharacterBloc>(() => CharacterBloc(sl<GetCharacterUseCase>(), sl<AddToFavoriteUseCase>(), sl<RemoveFromFavoriteUseCase>(), sl<GetFavoriteCharactersUseCase>()));
}
