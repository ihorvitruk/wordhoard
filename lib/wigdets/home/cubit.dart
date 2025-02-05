import 'dart:async';

import 'package:rxdart/subjects.dart';
import 'package:wordhoard/architecture/base_cubit.dart';
import 'package:wordhoard/wigdets/home/state.dart';

class HomeCubit extends BaseCubit<HomeState> {
  HomeCubit() : super(HomeState.initial);

  final _currentTab = BehaviorSubject.seeded(0);

  @override
  Stream<HomeState> get stream => _currentTab.stream.map(_createState);

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
