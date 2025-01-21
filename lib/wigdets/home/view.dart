import 'package:flutter/material.dart';
import 'package:wordhoard/unit/unit_view.dart';
import 'package:wordhoard/wigdets/home/unit.dart';

class HomeView extends UnitView<HomeUnit> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, HomeUnit unit) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: unit.state.currentTab,
        items: const [],
      ),
    );
  }
}
