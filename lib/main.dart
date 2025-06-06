import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rick_and_morty/data/model/character_adapter/character_adapter.dart';
import 'package:rick_and_morty/data/service/di/service_locator.dart';
import 'package:rick_and_morty/presentation/bloc/character/character_bloc.dart';
import 'package:rick_and_morty/presentation/page/home_page.dart';
import 'package:rick_and_morty/presentation/page/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //final dir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter();
  Hive.registerAdapter(CharacterHiveAdapter());
  await setUp();
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
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}