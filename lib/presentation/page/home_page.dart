import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';
import 'package:rick_and_morty/domain/usercase/get_character_usecase.dart';
import 'package:rick_and_morty/presentation/bloc/character/character_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/presentation/page/favorite_page.dart';
import 'package:rick_and_morty/presentation/widget/character_card.dart';
import 'package:rick_and_morty/presentation/widget/circular_loading.dart';
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
  final _textController = TextEditingController();

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
              TextField(
                controller: _textController,
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
                Row(children: [
                  if (state.filterData.$1 != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Chip(label: Text("Status: ${state.filterData.$1!.name.capitalize()}", style: GoogleFonts.openSans())),
                    ),
                  if (state.filterData.$2 != null) Chip(label: Text("Gender: ${state.filterData.$2!.name.capitalize()}", style: GoogleFonts.openSans())),
                ]),
              Expanded(
                child: (state.loadingType == CharacterLoadingType.api || state.loadingType == CharacterLoadingType.getFavorites)
                    ? const CircularLoading()
                    : state.loadingType == CharacterLoadingType.none
                        ? RefreshIndicator(
                            edgeOffset: 60,
                            onRefresh: () async {
                              _characterBloc.add(const CharacterEvent.getCharacters(page: 1));
                            },
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemCount: state.characters.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                child: CharacterCard(
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
                                  isFavorite: state.favorites.contains(state.characters[index]),
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
    final result = await showSlidingBottomSheet(context, builder: (context) {
      return SlidingSheetDialog(
        padding: const EdgeInsets.symmetric(vertical: 10),
        headerBuilder: (context, state) => Material(
          child: Text(
            "Filter",
            style: GoogleFonts.openSans(fontSize: 20),
          ),
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
          return BlocBuilder<CharacterBloc, CharacterState>(builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Material(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("By status", style: GoogleFonts.openSans(fontSize: 20)),
                    ...List.generate(
                      _statuses.length,
                      (index) => RadioListTile(
                        onChanged: (value) {
                          _characterBloc.add(CharacterEvent.changeFilterData(characterStatus: _statuses[index], characterGender: state.filterData.$2));
                        },
                        title: Text(_statuses[index].name.capitalize(), style: GoogleFonts.openSans()),
                        value: state.filterData.$1 == null ? false : state.filterData.$1 == _statuses[index],
                        groupValue: true,
                      ),
                    ),
                    Text("By gender", style: GoogleFonts.openSans(fontSize: 20)),
                    ...List.generate(
                      _genders.length,
                      (index) => RadioListTile(
                        title: Text(_genders[index].name.capitalize(), style: GoogleFonts.openSans()),
                        value: state.filterData.$1 == null ? false : state.filterData.$2 == _genders[index],
                        groupValue: true,
                        onChanged: (value) {
                          _characterBloc.add(CharacterEvent.changeFilterData(characterStatus: state.filterData.$1, characterGender: _genders[index]));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: MaterialButton(
                          color: Colors.orange,
                          onPressed: () {},
                          child: Text(
                            "Let's filter",
                            style: GoogleFonts.openSans(fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        },
      );
    });

    print(result); // This is the result.
  }
}
