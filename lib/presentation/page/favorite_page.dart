import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';
import 'package:rick_and_morty/presentation/bloc/character/character_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/presentation/widget/character_card.dart';
import 'package:rick_and_morty/presentation/widget/circular_loading.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  late CharacterBloc _characterBloc;

  @override
  void initState() {
    _characterBloc = context.read<CharacterBloc>();
    _characterBloc.add(const CharacterEvent.getFavoriteCharacters());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          return (state.loadingType == CharacterLoadingType.api || state.loadingType == CharacterLoadingType.getFavorites)
              ? const CircularLoading()
              : state.loadingType == CharacterLoadingType.none
                  ? state.favorites.isEmpty
                      ? Center(
                          child: Text(
                            "No favorite characters",
                            style: GoogleFonts.openSans(fontSize: 32),
                          ),
                        )
                      : RefreshIndicator(
                          edgeOffset: 60,
                          onRefresh: () async {
                            _characterBloc.add(const CharacterEvent.getCharacters(page: 1));
                          },
                          child: ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
                            physics: const BouncingScrollPhysics(),
                            itemCount: state.favorites.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Dismissible(
                                key: UniqueKey(),
                                confirmDismiss: (direction) async {
                                  return direction == DismissDirection.startToEnd;
                                },
                                onDismissed: (direction) {
                                  if (direction == DismissDirection.startToEnd) {
                                    _characterBloc.add(CharacterEvent.removeFromFavorite(state.favorites[index]));
                                  }
                                },
                                background: Container(
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.symmetric(horizontal: 32),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                    color: Colors.red.withOpacity(0.5),
                                  ),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const ShapeDecoration(shape: CircleBorder(), color: Colors.red),
                                    child: const Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                child: CharacterCard(
                                  character: state.favorites[index],

                                  isFavorite: true,
                                ),
                              ),
                            ),
                          ),
                        )
                  : const SizedBox.shrink();
        },
      ),
    );


  }
}
