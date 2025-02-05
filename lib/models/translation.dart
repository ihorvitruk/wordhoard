import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordhoard/models/timestamp_converter.dart';

part 'translation.freezed.dart';
part 'translation.g.dart';

@freezed
class Translation with _$Translation {
  @JsonSerializable(includeIfNull: false)
  const factory Translation({
    @TimestampConverter() required DateTime createdAt,
    required String input,
    required String translation,
    String? id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
