// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TranslationImpl _$$TranslationImplFromJson(Map<String, dynamic> json) =>
    _$TranslationImpl(
      createdAt: const TimestampConverter().fromJson(
        json['createdAt'] as Object,
      ),
      input: json['input'] as String,
      translation: json['translation'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$TranslationImplToJson(_$TranslationImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'input': instance.input,
      'translation': instance.translation,
      if (instance.id case final value?) 'id': value,
    };
