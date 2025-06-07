part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.data({
    required CharacterLoadingType loadingType,
    required List<Character> characters,
    required List<Character> favorites,
    required int pagesCount,
    required int currentPage,
    required (CharacterStatus?, CharacterGender?) filterData,
  }) = _Data;
}
