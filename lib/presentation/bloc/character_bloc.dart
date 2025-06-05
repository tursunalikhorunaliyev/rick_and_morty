import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/domain/entity/character.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';
import 'package:rick_and_morty/domain/usercase/add_to_favorite_usecase.dart';
import 'package:rick_and_morty/domain/usercase/get_character_usecase.dart';
import 'package:rick_and_morty/domain/usercase/get_favorite_characters_usecase.dart';
import 'package:rick_and_morty/domain/usercase/remove_from_favorite_usecase.dart';

part 'character_event.dart';

part 'character_state.dart';

part 'character_bloc.freezed.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final GetCharacterUseCase getCharacterUseCase;
  final GetFavoriteCharactersUseCase getFavoriteCharactersUseCase;
  final AddToFavoriteUseCase addToFavoriteUseCase;
  final RemoveFromFavoriteUseCase removeFromFavoriteUseCase;

  CharacterBloc(this.getCharacterUseCase, this.addToFavoriteUseCase, this.removeFromFavoriteUseCase, this.getFavoriteCharactersUseCase)
      : super(const CharacterState.data(loadingType: CharacterLoadingType.none, characters: [], favorites: [])) {
    on<CharacterEvent>((event, emit) async {
      await event.when(
        started: () async {},
        getCharacters: (name, status, species, type, gender, page) async {
          emit(state.copyWith(loadingType: CharacterLoadingType.api));
          final characters = await getCharacterUseCase(name: name, status: status, species: species, type: type, gender: gender, page: 1);
          emit(state.copyWith(loadingType: CharacterLoadingType.none, characters: characters));
        },
        getFavoriteCharacters: () async {
          emit(state.copyWith(loadingType: CharacterLoadingType.getFavorites));
          final favoriteCharacters = await getFavoriteCharactersUseCase();
          emit(state.copyWith(loadingType: CharacterLoadingType.none, favorites: favoriteCharacters));
        },
        addToFavorite: () async {},
        removeFromFavorite: () {},
      );
    });
  }
}
