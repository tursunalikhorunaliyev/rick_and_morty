import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/enum/enums.dart';
import 'package:rick_and_morty/presentation/bloc/character_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/presentation/widget/circular_loading.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<CharacterBloc>().add(const CharacterEvent.getCharacters(page: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          return state.loadingType == CharacterLoadingType.api
              ? const CircularLoading()
              : state.loadingType == CharacterLoadingType.none
                  ? RefreshIndicator(
                      edgeOffset: 60,
                      onRefresh: () async {
                        context.read<CharacterBloc>().add(const CharacterEvent.getCharacters(page: 1));
                      },
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: state.characters.length,
                        itemBuilder: (context, index) => ListTile(
                          leading: CircleAvatar(foregroundImage: NetworkImage(state.characters[index].image)),
                          title: Text(state.characters[index].name),
                          subtitle: Text(state.characters[index].originName),
                        ),
                      ),
                    )
                  : const SizedBox.shrink();
        },
      ),
    );
  }
}
