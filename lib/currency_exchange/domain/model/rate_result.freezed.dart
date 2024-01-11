// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RateResult {
  DateTime get nextUpdateTime => throw _privateConstructorUsedError;
  String get baseCode => throw _privateConstructorUsedError;
  Map<String, num> get rates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RateResultCopyWith<RateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateResultCopyWith<$Res> {
  factory $RateResultCopyWith(
          RateResult value, $Res Function(RateResult) then) =
      _$RateResultCopyWithImpl<$Res, RateResult>;
  @useResult
  $Res call({DateTime nextUpdateTime, String baseCode, Map<String, num> rates});
}

/// @nodoc
class _$RateResultCopyWithImpl<$Res, $Val extends RateResult>
    implements $RateResultCopyWith<$Res> {
  _$RateResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextUpdateTime = null,
    Object? baseCode = null,
    Object? rates = null,
  }) {
    return _then(_value.copyWith(
      nextUpdateTime: null == nextUpdateTime
          ? _value.nextUpdateTime
          : nextUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<String, num>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateResultImplCopyWith<$Res>
    implements $RateResultCopyWith<$Res> {
  factory _$$RateResultImplCopyWith(
          _$RateResultImpl value, $Res Function(_$RateResultImpl) then) =
      __$$RateResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime nextUpdateTime, String baseCode, Map<String, num> rates});
}

/// @nodoc
class __$$RateResultImplCopyWithImpl<$Res>
    extends _$RateResultCopyWithImpl<$Res, _$RateResultImpl>
    implements _$$RateResultImplCopyWith<$Res> {
  __$$RateResultImplCopyWithImpl(
      _$RateResultImpl _value, $Res Function(_$RateResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextUpdateTime = null,
    Object? baseCode = null,
    Object? rates = null,
  }) {
    return _then(_$RateResultImpl(
      nextUpdateTime: null == nextUpdateTime
          ? _value.nextUpdateTime
          : nextUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<String, num>,
    ));
  }
}

/// @nodoc

class _$RateResultImpl with DiagnosticableTreeMixin implements _RateResult {
  const _$RateResultImpl(
      {required this.nextUpdateTime,
      required this.baseCode,
      required final Map<String, num> rates})
      : _rates = rates;

  @override
  final DateTime nextUpdateTime;
  @override
  final String baseCode;
  final Map<String, num> _rates;
  @override
  Map<String, num> get rates {
    if (_rates is EqualUnmodifiableMapView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rates);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RateResult(nextUpdateTime: $nextUpdateTime, baseCode: $baseCode, rates: $rates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RateResult'))
      ..add(DiagnosticsProperty('nextUpdateTime', nextUpdateTime))
      ..add(DiagnosticsProperty('baseCode', baseCode))
      ..add(DiagnosticsProperty('rates', rates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateResultImpl &&
            (identical(other.nextUpdateTime, nextUpdateTime) ||
                other.nextUpdateTime == nextUpdateTime) &&
            (identical(other.baseCode, baseCode) ||
                other.baseCode == baseCode) &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextUpdateTime, baseCode,
      const DeepCollectionEquality().hash(_rates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateResultImplCopyWith<_$RateResultImpl> get copyWith =>
      __$$RateResultImplCopyWithImpl<_$RateResultImpl>(this, _$identity);
}

abstract class _RateResult implements RateResult {
  const factory _RateResult(
      {required final DateTime nextUpdateTime,
      required final String baseCode,
      required final Map<String, num> rates}) = _$RateResultImpl;

  @override
  DateTime get nextUpdateTime;
  @override
  String get baseCode;
  @override
  Map<String, num> get rates;
  @override
  @JsonKey(ignore: true)
  _$$RateResultImplCopyWith<_$RateResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
