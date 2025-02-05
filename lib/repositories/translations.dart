import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wordhoard/models/translation.dart';
import 'package:wordhoard/repositories/base.dart';
import 'package:wordhoard/repositories/extensions.dart';
import 'package:wordhoard/services/time.dart';

class TranslationsRepository extends BaseRepository {
  TranslationsRepository(
    this._timeService,
    this._translationsCollection,
    this._logger,
  ) {
    autoClose(
      _translationsCollection
          .snapshots()
          .onErrorResume(_onError)
          .listen(_onTranslationsReceived),
    );

    autoClose(_translations);
  }

  final Logger _logger;

  final TimeService _timeService;

  final CollectionReference _translationsCollection;

  final _translations = BehaviorSubject<Iterable<Translation>>.seeded([]);
  Stream<Iterable<Translation>> get translations => _translations;

  Stream<QuerySnapshot> _onError(Object error, StackTrace stackTrace) {
    _logger.e(
      'Error getting translations.',
      error: error,
      stackTrace: stackTrace,
    );
    return const Stream.empty();
  }

  void _onTranslationsReceived(QuerySnapshot querySnapshot) {
    final translations =
        querySnapshot.docs
            .map((doc) => doc.toEntity(Translation.fromJson))
            .nonNulls;
    _translations.add(translations);
  }

  Future<void> addTranslation(String input, String output) async {
    if (input.toLowerCase() == output.toLowerCase() || output.isEmpty) return;

    final existingTranslation =
        await _translationsCollection
            .where('input', isEqualTo: input)
            .limit(1)
            .get();

    if (existingTranslation.docs.isNotEmpty) return;

    final translation = Translation(
      createdAt: _timeService.now,
      input: input,
      translation: output,
    );
    await _translationsCollection.add(translation.toJson());
  }

  Future<void> removeTranslation(String translationId) async {
    await _translationsCollection.doc(translationId).delete();
  }
}
