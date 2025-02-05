// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Translation _$TranslationFromJson(Map<String, dynamic> json) {
  return _Translation.fromJson(json);
}

/// @nodoc
mixin _$Translation {
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get input => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this Translation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslationCopyWith<Translation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationCopyWith<$Res> {
  factory $TranslationCopyWith(
    Translation value,
    $Res Function(Translation) then,
  ) = _$TranslationCopyWithImpl<$Res, Translation>;
  @useResult
  $Res call({
    @TimestampConverter() DateTime createdAt,
    String input,
    String translation,
    String? id,
  });
}

/// @nodoc
class _$TranslationCopyWithImpl<$Res, $Val extends Translation>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? input = null,
    Object? translation = null,
    Object? id = freezed,
  }) {
    return _then(
      _value.copyWith(
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            input:
                null == input
                    ? _value.input
                    : input // ignore: cast_nullable_to_non_nullable
                        as String,
            translation:
                null == translation
                    ? _value.translation
                    : translation // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TranslationImplCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$$TranslationImplCopyWith(
    _$TranslationImpl value,
    $Res Function(_$TranslationImpl) then,
  ) = __$$TranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampConverter() DateTime createdAt,
    String input,
    String translation,
    String? id,
  });
}

/// @nodoc
class __$$TranslationImplCopyWithImpl<$Res>
    extends _$TranslationCopyWithImpl<$Res, _$TranslationImpl>
    implements _$$TranslationImplCopyWith<$Res> {
  __$$TranslationImplCopyWithImpl(
    _$TranslationImpl _value,
    $Res Function(_$TranslationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? input = null,
    Object? translation = null,
    Object? id = freezed,
  }) {
    return _then(
      _$TranslationImpl(
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        input:
            null == input
                ? _value.input
                : input // ignore: cast_nullable_to_non_nullable
                    as String,
        translation:
            null == translation
                ? _value.translation
                : translation // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$TranslationImpl implements _Translation {
  const _$TranslationImpl({
    @TimestampConverter() required this.createdAt,
    required this.input,
    required this.translation,
    this.id,
  });

  factory _$TranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationImplFromJson(json);

  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final String input;
  @override
  final String translation;
  @override
  final String? id;

  @override
  String toString() {
    return 'Translation(createdAt: $createdAt, input: $input, translation: $translation, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, input, translation, id);

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      __$$TranslationImplCopyWithImpl<_$TranslationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationImplToJson(this);
  }
}

abstract class _Translation implements Translation {
  const factory _Translation({
    @TimestampConverter() required final DateTime createdAt,
    required final String input,
    required final String translation,
    final String? id,
  }) = _$TranslationImpl;

  factory _Translation.fromJson(Map<String, dynamic> json) =
      _$TranslationImpl.fromJson;

  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  String get input;
  @override
  String get translation;
  @override
  String? get id;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
