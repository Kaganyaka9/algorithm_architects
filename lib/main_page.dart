import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/home_page.dart';
import 'package:algorithm_architects/dictionary_page.dart';
import 'package:algorithm_architects/ask_page.dart';
import 'package:algorithm_architects/settings_page.dart';

/// Controls the navigation between the pages.
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _navIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const DictionaryPage(),
    const AskPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _navIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: _navIndex,
        onTap: (int index) => setState(() => _navIndex = index),
        iconSize: 35,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Resimli Sözlük',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: 'Soru Sor',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
            backgroundColor: primaryColor,
          ),
        ],
      ),
    );
  }
}
