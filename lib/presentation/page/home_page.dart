import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';
import 'package:rick_and_morty/domain/usercase/get_character_usecase.dart';
import 'package:rick_and_morty/presentation/bloc/character/character_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/presentation/bloc/filter_helper/filter_helper_cubit.dart';
import 'package:rick_and_morty/presentation/page/favorite_page.dart';
import 'package:rick_and_morty/presentation/widget/character_card.dart';
import 'package:rick_and_morty/presentation/widget/circular_loading.dart';
import 'package:rick_and_morty/presentation/widget/custom_filter_chip.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';
import 'package:string_capitalize/string_capitalize.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _statuses = [CharacterStatus.dead, CharacterStatus.alive, CharacterStatus.unknown];
  final _genders = [CharacterGender.male, CharacterGender.female, CharacterGender.unknown];
  late CharacterBloc _characterBloc;
  final _filterHelperCubit = FilterHelperCubit();
  final _scrollController = ScrollController();

  @override
  void initState() {
    _characterBloc = context.read<CharacterBloc>();
    _characterBloc.add(const CharacterEvent.getCharacters(page: 1));
    _characterBloc.add(const CharacterEvent.getFavoriteCharacters());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharacterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(title: Text("Characters", style: GoogleFonts.openSans(fontSize: 24))),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextField(
                controller: _characterBloc.keywordController,
                decoration: InputDecoration(
                    hintText: "Search by name",
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Colors.grey)),
                    disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Colors.grey)),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(5),
                      child: IconButton(
                          onPressed: () {
                            showAsBottomSheet(context);
                          },
                          icon: const Icon(
                            EvaIcons.optionsOutline,
                            color: Colors.black45,
                          )),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                    alignLabelWithHint: true),
                style: GoogleFonts.openSans(fontSize: 16),
                onSubmitted: (value) {
                  _characterBloc.add(CharacterEvent.getCharacters(page: 1, name: value.trim()));
                },
              ),
              const SizedBox(height: 10),
              if (state.filterData.$1 != null || state.filterData.$2 != null)
                Row(
                  children: [
                    if (state.filterData.$1 != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CustomFilterChip(
                          filterChipType: FilterChipType.status,
                          filterHelperCubit: _filterHelperCubit,
                        ),
                      ),
                    if (state.filterData.$2 != null)
                      CustomFilterChip(
                        filterChipType: FilterChipType.gender,
                        filterHelperCubit: _filterHelperCubit,
                      ),
                  ],
                ),
              Expanded(
                child: (state.loadingType == CharacterLoadingType.api || state.loadingType == CharacterLoadingType.getFavorites)
                    ? const CircularLoading()
                    : state.loadingType == CharacterLoadingType.none
                        ? state.characters.isEmpty
                            ? Center(child: Text("No characters found", style: GoogleFonts.openSans(fontSize: 32)))
                            : RefreshIndicator(
                                edgeOffset: 20,
                                onRefresh: () async {
                                  _characterBloc.add(CharacterEvent.getCharacters(status: state.filterData.$1, gender: state.filterData.$2, page: 1));
                                },
                                child: ListView.builder(
                                  controller: _scrollController,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: state.characters.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: [
                                        CharacterCard(
                                          character: state.characters[index],
                                          onTapStar: () {
                                            if (!state.favorites.contains(state.characters[index])) {
                                              _characterBloc.add(
                                                CharacterEvent.addToFavorite(state.characters[index]),
                                              );
                                            } else {
                                              _characterBloc.add(
                                                CharacterEvent.removeFromFavorite(state.characters[index]),
                                              );
                                            }
                                          },
                                          isFavorite: state.favorites.map((e) => e.id).contains(state.characters[index].id),
                                        ),
                                        if (state.characters.length - 1 == index)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 10),
                                            child: MaterialButton(
                                              color: Colors.orange,
                                              onPressed: () {
                                                _characterBloc.add(
                                                  CharacterEvent.getCharacters(
                                                    status: _filterHelperCubit.state.characterStatus,
                                                    gender: _filterHelperCubit.state.characterGender,
                                                    page: state.currentPage + 1,
                                                  ),
                                                );
                                              },
                                              child: Text("Load more", style: GoogleFonts.openSans(fontSize: 16)),
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                        : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      );
    });
  }

  void showAsBottomSheet(BuildContext context) async {
    await showSlidingBottomSheet(context, builder: (context) {
      return SlidingSheetDialog(
        padding: const EdgeInsets.symmetric(vertical: 10),
        headerBuilder: (context, state) => Material(
          child: Text("Filter", style: GoogleFonts.openSans(fontSize: 20)),
        ),
        duration: const Duration(),
        elevation: 10,
        cornerRadius: 16,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.8, 1],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Material(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("By status", style: GoogleFonts.openSans(fontSize: 20)),
                  ...List.generate(
                    _statuses.length,
                    (index) => BlocBuilder<FilterHelperCubit, FilterHelperState>(
                      bloc: _filterHelperCubit,
                      builder: (context, state) {
                        return RadioListTile(
                          onChanged: (value) {
                            _filterHelperCubit.changeCharacterFilterParam(characterStatus: _statuses[index], characterGender: _filterHelperCubit.state.characterGender);
                          },
                          title: Text(_statuses[index].name.capitalize(), style: GoogleFonts.openSans()),
                          value: state.characterStatus == null ? false : state.characterStatus == _statuses[index],
                          groupValue: true,
                        );
                      },
                    ),
                  ),
                  Text("By gender", style: GoogleFonts.openSans(fontSize: 20)),
                  ...List.generate(
                    _genders.length,
                    (index) => BlocBuilder<FilterHelperCubit, FilterHelperState>(
                      bloc: _filterHelperCubit,
                      builder: (context, state) {
                        return RadioListTile(
                          title: Text(_genders[index].name.capitalize(), style: GoogleFonts.openSans()),
                          value: state.characterGender == null ? false : state.characterGender == _genders[index],
                          groupValue: true,
                          onChanged: (value) {
                            _filterHelperCubit.changeCharacterFilterParam(characterStatus: _filterHelperCubit.state.characterStatus, characterGender: _genders[index]);
                          },
                        );
                      },
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: BlocBuilder<CharacterBloc, CharacterState>(
                        builder: (context, state) {
                          return MaterialButton(
                            color: Colors.orange,
                            onPressed: () {
                              _characterBloc.add(CharacterEvent.changeFilterData(characterStatus: _filterHelperCubit.state.characterStatus, characterGender: _filterHelperCubit.state.characterGender));
                              if (_filterHelperCubit.state.characterStatus != null || _filterHelperCubit.state.characterGender != null) {
                                _characterBloc.add(CharacterEvent.getCharacters(status: _filterHelperCubit.state.characterStatus, gender: _filterHelperCubit.state.characterGender, page: 1));
                              }
                              Navigator.pop(context);
                            },
                            child: (state.loadingType == CharacterLoadingType.api || state.loadingType == CharacterLoadingType.getFavorites)
                                ? const CircularLoading()
                                : Text(
                                    "Let's filter",
                                    style: GoogleFonts.openSans(fontSize: 20),
                                  ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
