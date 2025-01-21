import 'package:flutter/material.dart';
import 'package:wordhoard/unit/unit_view.dart';
import 'package:wordhoard/wigdets/dictionary/view.dart';
import 'package:wordhoard/wigdets/home/unit.dart';
import 'package:wordhoard/wigdets/translator/view.dart';

class HomeView extends UnitView<HomeUnit> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, HomeUnit unit) {
    return Scaffold(
      body:
          unit.state.currentTab == 0
              ? const TranslatorView()
              : const DictionaryView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: unit.state.currentTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'Translator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Dictionary',
          ),
        ],
      ),
    );
  }
}
