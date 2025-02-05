import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wordhoard/architecture/base_view.dart';
import 'package:wordhoard/wigdets/dictionary/view.dart';
import 'package:wordhoard/wigdets/home/cubit.dart';
import 'package:wordhoard/wigdets/translator/view.dart';

class HomeView extends BaseView<HomeCubit> {
  const HomeView({super.key});

  @override
  Widget buildView(BuildContext context, HomeCubit cubit) {
    return Scaffold(
      body:
          cubit.state.currentTab == 0
              ? const TranslatorView()
              : const DictionaryView(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cubit.state.currentTab,
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
        onTap: cubit.onBottomNavigationBarItemTap,
      ),
    );
  }
}
