import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
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
  final keywordController = TextEditingController();

  CharacterBloc(this.getCharacterUseCase, this.addToFavoriteUseCase, this.removeFromFavoriteUseCase, this.getFavoriteCharactersUseCase)
      : super(const CharacterState.data(loadingType: CharacterLoadingType.none, characters: [], pagesCount: 0, currentPage: 0, favorites: [], filterData: (null, null))) {
    on<CharacterEvent>(
      (event, emit) async {
        await event.when(
          started: () async {},
          getCharacters: (name, status, gender, page) async {
            emit(state.copyWith(loadingType: page==1? CharacterLoadingType.api:CharacterLoadingType.none));
            final characters = await getCharacterUseCase(
              name: name ?? (keywordController.text.isEmpty ? null : keywordController.value.text.trim()),
              status: status,
              gender: gender,
              page: page,
            );
            final favorite = await getFavoriteCharactersUseCase();
            emit(state.copyWith(loadingType: CharacterLoadingType.none, characters: List.of(state.characters)..addAll(characters.$1), pagesCount: characters.$2, currentPage: page, favorites: favorite));
          },
          getFavoriteCharacters: () async {
            emit(state.copyWith(loadingType: CharacterLoadingType.getFavorites));
            final favoriteCharacters = await getFavoriteCharactersUseCase();
            print(favoriteCharacters);
            emit(state.copyWith(loadingType: CharacterLoadingType.none, favorites: favoriteCharacters));
          },
          addToFavorite: (character) async {
            emit(state.copyWith(favorites: await addToFavoriteUseCase(character)));
          },
          removeFromFavorite: (character) async {
            emit(state.copyWith(favorites: await removeFromFavoriteUseCase(character)));
          },
          changeFilterData: (characterStatus, characterGender) {
            emit(state.copyWith(filterData: (characterStatus, characterGender)));
          },
        );
      },
    );
  }
}
