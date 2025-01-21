import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({bool? isSignedIn}) = _MainState;

  static const initial = MainState();
}
