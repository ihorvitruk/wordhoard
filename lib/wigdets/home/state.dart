import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({required int currentTab}) = _HomeState;

  static const initial = HomeState(currentTab: 0);
}
