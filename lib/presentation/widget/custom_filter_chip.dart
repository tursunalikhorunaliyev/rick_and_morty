import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';
import 'package:rick_and_morty/presentation/bloc/character/character_bloc.dart';
import 'package:rick_and_morty/presentation/bloc/filter_helper/filter_helper_cubit.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:string_capitalize/string_capitalize.dart';

class CustomFilterChip extends StatelessWidget {
  final FilterHelperCubit filterHelperCubit;
  final FilterChipType filterChipType;

  const CustomFilterChip({super.key, required this.filterHelperCubit, required this.filterChipType});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        return Chip(
          label: Text(
            filterChipType == FilterChipType.status
                ? "Status: ${state.filterData.$1!.name.capitalize()}"
                : filterChipType == FilterChipType.gender
                    ? "Gender: ${state.filterData.$2!.name.capitalize()}"
                    : "",
            style: GoogleFonts.openSans(),
          ),
          deleteIcon: const Icon(EvaIcons.closeCircleOutline),
          onDeleted: () {
            if (filterChipType == FilterChipType.status) {
              filterHelperCubit.changeCharacterFilterParam(characterStatus: null, characterGender: filterHelperCubit.state.characterGender);
              context.read<CharacterBloc>().add(CharacterEvent.changeFilterData(characterStatus: null, characterGender: filterHelperCubit.state.characterGender));
              context.read<CharacterBloc>().add(CharacterEvent.getCharacters(status: null, gender: filterHelperCubit.state.characterGender, page: 1));
            } else if (filterChipType == FilterChipType.gender) {
              filterHelperCubit.changeCharacterFilterParam(characterStatus: filterHelperCubit.state.characterStatus, characterGender: null);
              context.read<CharacterBloc>().add(CharacterEvent.changeFilterData(characterStatus: filterHelperCubit.state.characterStatus, characterGender: null));
              context.read<CharacterBloc>().add(CharacterEvent.getCharacters(status: filterHelperCubit.state.characterStatus, gender: null, page: 1));
            }
          },
          deleteIconColor: Colors.red,
        );
      },
    );
  }
}
