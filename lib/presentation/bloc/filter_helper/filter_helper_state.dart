part of 'filter_helper_cubit.dart';

@freezed
class FilterHelperState with _$FilterHelperState {
  const factory FilterHelperState.data({CharacterStatus? characterStatus, CharacterGender? characterGender}) = _Data;
}
