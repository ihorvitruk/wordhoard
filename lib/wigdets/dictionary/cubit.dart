import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wordhoard/architecture/base_cubit.dart';
import 'package:wordhoard/models/translation.dart';
import 'package:wordhoard/repositories/translations.dart';
import 'package:wordhoard/wigdets/dictionary/state.dart';

class DictionaryCubit extends BaseCubit<DictionaryState> {
  DictionaryCubit({required this.translationsRepository})
    : super(DictionaryState.initial) {
    autoClose(_searchQuery);

    autoClose(_dateTimeRange);
  }

  final TranslationsRepository translationsRepository;

  final _searchQuery = BehaviorSubject.seeded('');

  final _dateTimeRange = BehaviorSubject<DateTimeRange?>.seeded(null);

  @override
  Stream<DictionaryState> get stream => Rx.combineLatest3(
    translationsRepository.translations,
    _searchQuery,
    _dateTimeRange,
    _createState,
  );

  DictionaryState _createState(
    Iterable<Translation> translations,
    String searchQuery,
    DateTimeRange? dateTimeRange,
  ) {
    final query = searchQuery.toLowerCase();

    var filteredTranslations =
        translations
            .where(
              (translation) =>
                  query.isEmpty ||
                  translation.input.toLowerCase().contains(query) ||
                  translation.translation.toLowerCase().contains(query),
            )
            .toList()
          ..sort((a, b) => a.input.compareTo(b.input));

    if (dateTimeRange != null) {
      final endOfDay = DateTime(
        dateTimeRange.end.year,
        dateTimeRange.end.month,
        dateTimeRange.end.day,
        23,
        59,
        59,
      );

      filteredTranslations =
          filteredTranslations.where((translation) {
            final createdAt = translation.createdAt;
            return createdAt.isAfter(dateTimeRange.start) &&
                    createdAt.isBefore(endOfDay) ||
                createdAt.isAtSameMomentAs(endOfDay) ||
                createdAt.isAtSameMomentAs(dateTimeRange.start);
          }).toList();
    }

    return DictionaryState(
      translations: filteredTranslations,
      dateTimeRange: dateTimeRange,
    );
  }

  Future<void> onRemoveTranslationPressed(String translationId) async {
    await translationsRepository.removeTranslation(translationId);
  }

  void onSearchQueryChanged(String query) {
    _searchQuery.add(query.trim());
  }

  void onDateTimeRangeChanged(DateTimeRange? dateTimeRange) {
    if (dateTimeRange == null) return;
    _dateTimeRange.add(dateTimeRange);
  }

  void onDateTimeRangeReset() {
    _dateTimeRange.add(null);
  }
}
