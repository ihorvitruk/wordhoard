import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<String> translate(String input) async {
    final response = await _dio.get(
      'https://clients5.google.com/translate_a/t?client=dict-chrome-ex&sl=en&tl=uk&q=$input',
    );
    return (response.data as List<dynamic>)[0];
  }
}
