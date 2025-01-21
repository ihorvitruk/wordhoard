import 'dart:async';

import 'package:wordhoard/unit/unit.dart';
import 'package:wordhoard/wigdets/home/state.dart';

class HomeUnit extends Unit<HomeState> {
  HomeUnit() : super(HomeState.initial);

  final _currentTab = StreamController<int>.broadcast();

  @override
  Stream<HomeState> get states => _currentTab.stream.map(_createState);

  void onBottomNavigationBarItemTap(int index) {
    _currentTab.add(index);
  }

  HomeState _createState(int currentTab) {
    return HomeState(currentTab: currentTab);
  }

  @override
  Future<void> close() {
    _currentTab.close();
    return super.close();
  }
}
