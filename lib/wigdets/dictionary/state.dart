import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordhoard/models/translation.dart';

part 'state.freezed.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const factory DictionaryState({
    required Iterable<Translation> translations,
    DateTimeRange? dateTimeRange,
  }) = _DictionaryState;

  static const initial = DictionaryState(translations: {});
}
