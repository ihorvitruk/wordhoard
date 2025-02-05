import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class TranslatorState with _$TranslatorState {
  const factory TranslatorState({
    required bool isTranslating,
    required String translation,
  }) = _TranslatorState;

  static const initial = TranslatorState(isTranslating: false, translation: '');
}
