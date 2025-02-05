import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wordhoard/architecture/base_cubit.dart';
import 'package:wordhoard/repositories/translations.dart';
import 'package:wordhoard/services/api.dart';
import 'package:wordhoard/wigdets/translator/state.dart';

class TranslatorCubit extends BaseCubit<TranslatorState> {
  TranslatorCubit(this._apiService, this._translationsRepository)
    : super(TranslatorState.initial);

  final ApiService _apiService;

  final TranslationsRepository _translationsRepository;

  final inputTextController = TextEditingController();

  final _isTranslating = BehaviorSubject.seeded(false);

  final _translation = BehaviorSubject.seeded('');

  @override
  Stream<TranslatorState> get stream =>
      Rx.combineLatest2(_translation, _isTranslating, _createState);

  TranslatorState _createState(String translation, bool isTranslating) {
    return TranslatorState(
      isTranslating: isTranslating,
      translation: translation,
    );
  }

  @override
  Future<void> close() {
    inputTextController.dispose();
    _isTranslating.close();
    _translation.close();
    return super.close();
  }

  Future<void> onTranslatePressed() async {
    final input = inputTextController.text.trim();
    if (input.isEmpty) return;

    _isTranslating.add(true);
    final translation = await _apiService.translate(
      inputTextController.text.trim(),
    );
    _translation.add(translation);
    _isTranslating.add(false);

    await _translationsRepository.addTranslation(input, translation);
  }

  void onInputTextChanged(String text) {
    _translation.add('');
  }
}
