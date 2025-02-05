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
mixin _$DictionaryState {
  Iterable<Translation> get translations => throw _privateConstructorUsedError;
  DateTimeRange? get dateTimeRange => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryStateCopyWith<DictionaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryStateCopyWith<$Res> {
  factory $DictionaryStateCopyWith(
    DictionaryState value,
    $Res Function(DictionaryState) then,
  ) = _$DictionaryStateCopyWithImpl<$Res, DictionaryState>;
  @useResult
  $Res call({Iterable<Translation> translations, DateTimeRange? dateTimeRange});
}

/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res, $Val extends DictionaryState>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? translations = null, Object? dateTimeRange = freezed}) {
    return _then(
      _value.copyWith(
            translations:
                null == translations
                    ? _value.translations
                    : translations // ignore: cast_nullable_to_non_nullable
                        as Iterable<Translation>,
            dateTimeRange:
                freezed == dateTimeRange
                    ? _value.dateTimeRange
                    : dateTimeRange // ignore: cast_nullable_to_non_nullable
                        as DateTimeRange?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DictionaryStateImplCopyWith<$Res>
    implements $DictionaryStateCopyWith<$Res> {
  factory _$$DictionaryStateImplCopyWith(
    _$DictionaryStateImpl value,
    $Res Function(_$DictionaryStateImpl) then,
  ) = __$$DictionaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<Translation> translations, DateTimeRange? dateTimeRange});
}

/// @nodoc
class __$$DictionaryStateImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryStateImpl>
    implements _$$DictionaryStateImplCopyWith<$Res> {
  __$$DictionaryStateImplCopyWithImpl(
    _$DictionaryStateImpl _value,
    $Res Function(_$DictionaryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? translations = null, Object? dateTimeRange = freezed}) {
    return _then(
      _$DictionaryStateImpl(
        translations:
            null == translations
                ? _value.translations
                : translations // ignore: cast_nullable_to_non_nullable
                    as Iterable<Translation>,
        dateTimeRange:
            freezed == dateTimeRange
                ? _value.dateTimeRange
                : dateTimeRange // ignore: cast_nullable_to_non_nullable
                    as DateTimeRange?,
      ),
    );
  }
}

/// @nodoc

class _$DictionaryStateImpl
    with DiagnosticableTreeMixin
    implements _DictionaryState {
  const _$DictionaryStateImpl({required this.translations, this.dateTimeRange});

  @override
  final Iterable<Translation> translations;
  @override
  final DateTimeRange? dateTimeRange;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryState(translations: $translations, dateTimeRange: $dateTimeRange)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DictionaryState'))
      ..add(DiagnosticsProperty('translations', translations))
      ..add(DiagnosticsProperty('dateTimeRange', dateTimeRange));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryStateImpl &&
            const DeepCollectionEquality().equals(
              other.translations,
              translations,
            ) &&
            (identical(other.dateTimeRange, dateTimeRange) ||
                other.dateTimeRange == dateTimeRange));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(translations),
    dateTimeRange,
  );

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryStateImplCopyWith<_$DictionaryStateImpl> get copyWith =>
      __$$DictionaryStateImplCopyWithImpl<_$DictionaryStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DictionaryState implements DictionaryState {
  const factory _DictionaryState({
    required final Iterable<Translation> translations,
    final DateTimeRange? dateTimeRange,
  }) = _$DictionaryStateImpl;

  @override
  Iterable<Translation> get translations;
  @override
  DateTimeRange? get dateTimeRange;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryStateImplCopyWith<_$DictionaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
