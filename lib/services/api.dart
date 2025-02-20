import 'package:translator/translator.dart';

class ApiService {
  final translator = GoogleTranslator();

  Future<String> translate(String input) async {
    final translation = await translator.translate(input, from: 'en', to: 'uk');
    return translation.text;
  }
}
