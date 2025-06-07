import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';

part 'filter_helper_state.dart';
part 'filter_helper_cubit.freezed.dart';

class FilterHelperCubit extends Cubit<FilterHelperState> {
  FilterHelperCubit() : super(const FilterHelperState.data());

  void changeCharacterFilterParam({CharacterStatus? characterStatus, CharacterGender? characterGender}){
    emit(state.copyWith(characterStatus: characterStatus, characterGender: characterGender));
  }
}
