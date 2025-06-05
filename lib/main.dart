import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rick_and_morty/data/model/character_adapter/character_adapter.dart';
import 'package:rick_and_morty/presentation/bloc/character_bloc.dart';
import 'package:rick_and_morty/presentation/page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(dir.path);
  Hive.registerAdapter(CharacterHiveAdapter());
  //await setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CharacterBloc>(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}