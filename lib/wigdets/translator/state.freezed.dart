// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TranslatorState {
  bool get isTranslating => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;

  /// Create a copy of TranslatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslatorStateCopyWith<TranslatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslatorStateCopyWith<$Res> {
  factory $TranslatorStateCopyWith(
    TranslatorState value,
    $Res Function(TranslatorState) then,
  ) = _$TranslatorStateCopyWithImpl<$Res, TranslatorState>;
  @useResult
  $Res call({bool isTranslating, String translation});
}

/// @nodoc
class _$TranslatorStateCopyWithImpl<$Res, $Val extends TranslatorState>
    implements $TranslatorStateCopyWith<$Res> {
  _$TranslatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranslatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isTranslating = null, Object? translation = null}) {
    return _then(
      _value.copyWith(
            isTranslating:
                null == isTranslating
                    ? _value.isTranslating
                    : isTranslating // ignore: cast_nullable_to_non_nullable
                        as bool,
            translation:
                null == translation
                    ? _value.translation
                    : translation // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TranslatorStateImplCopyWith<$Res>
    implements $TranslatorStateCopyWith<$Res> {
  factory _$$TranslatorStateImplCopyWith(
    _$TranslatorStateImpl value,
    $Res Function(_$TranslatorStateImpl) then,
  ) = __$$TranslatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isTranslating, String translation});
}

/// @nodoc
class __$$TranslatorStateImplCopyWithImpl<$Res>
    extends _$TranslatorStateCopyWithImpl<$Res, _$TranslatorStateImpl>
    implements _$$TranslatorStateImplCopyWith<$Res> {
  __$$TranslatorStateImplCopyWithImpl(
    _$TranslatorStateImpl _value,
    $Res Function(_$TranslatorStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TranslatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isTranslating = null, Object? translation = null}) {
    return _then(
      _$TranslatorStateImpl(
        isTranslating:
            null == isTranslating
                ? _value.isTranslating
                : isTranslating // ignore: cast_nullable_to_non_nullable
                    as bool,
        translation:
            null == translation
                ? _value.translation
                : translation // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$TranslatorStateImpl
    with DiagnosticableTreeMixin
    implements _TranslatorState {
  const _$TranslatorStateImpl({
    required this.isTranslating,
    required this.translation,
  });

  @override
  final bool isTranslating;
  @override
  final String translation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TranslatorState(isTranslating: $isTranslating, translation: $translation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TranslatorState'))
      ..add(DiagnosticsProperty('isTranslating', isTranslating))
      ..add(DiagnosticsProperty('translation', translation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslatorStateImpl &&
            (identical(other.isTranslating, isTranslating) ||
                other.isTranslating == isTranslating) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTranslating, translation);

  /// Create a copy of TranslatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslatorStateImplCopyWith<_$TranslatorStateImpl> get copyWith =>
      __$$TranslatorStateImplCopyWithImpl<_$TranslatorStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TranslatorState implements TranslatorState {
  const factory _TranslatorState({
    required final bool isTranslating,
    required final String translation,
  }) = _$TranslatorStateImpl;

  @override
  bool get isTranslating;
  @override
  String get translation;

  /// Create a copy of TranslatorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslatorStateImplCopyWith<_$TranslatorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
