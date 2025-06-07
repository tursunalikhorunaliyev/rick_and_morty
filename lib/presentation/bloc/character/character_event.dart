part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.started() = _Started;

  const factory CharacterEvent.getCharacters({String? name, CharacterStatus? status, String? species, String? type, CharacterGender? gender, required int page}) = _GetCharacters;
  const factory CharacterEvent.getFavoriteCharacters() = _GetFavoriteCharacters;
  const factory CharacterEvent.addToFavorite(Character character) = _AddToFavorite;
  const factory CharacterEvent.removeFromFavorite(Character character) = _RemoveFromFavorite;
  const factory CharacterEvent.changeFilterData({CharacterStatus? characterStatus, CharacterGender? characterGender }) = _ChangeFilterData;
}
