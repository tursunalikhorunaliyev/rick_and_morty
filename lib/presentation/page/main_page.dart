import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty/presentation/page/favorite_page.dart';
import 'package:rick_and_morty/presentation/page/home_page.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [HomePage(), FavoritePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (value) {
          _pageController.animateToPage(value, duration: const Duration(milliseconds: 500), curve: Curves.fastLinearToSlowEaseIn);
          _currentPage = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(EvaIcons.home)),
          BottomNavigationBarItem(label: "Favorites", icon: Icon(EvaIcons.starOutline)),
        ],
      ),
    );
  }
}
