// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherMainState {
  List<WeatherInfo> get weatherInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherMainStateCopyWith<WeatherMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherMainStateCopyWith<$Res> {
  factory $WeatherMainStateCopyWith(
          WeatherMainState value, $Res Function(WeatherMainState) then) =
      _$WeatherMainStateCopyWithImpl<$Res, WeatherMainState>;
  @useResult
  $Res call({List<WeatherInfo> weatherInfo});
}

/// @nodoc
class _$WeatherMainStateCopyWithImpl<$Res, $Val extends WeatherMainState>
    implements $WeatherMainStateCopyWith<$Res> {
  _$WeatherMainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherInfo = null,
  }) {
    return _then(_value.copyWith(
      weatherInfo: null == weatherInfo
          ? _value.weatherInfo
          : weatherInfo // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherMainStateImplCopyWith<$Res>
    implements $WeatherMainStateCopyWith<$Res> {
  factory _$$WeatherMainStateImplCopyWith(_$WeatherMainStateImpl value,
          $Res Function(_$WeatherMainStateImpl) then) =
      __$$WeatherMainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeatherInfo> weatherInfo});
}

/// @nodoc
class __$$WeatherMainStateImplCopyWithImpl<$Res>
    extends _$WeatherMainStateCopyWithImpl<$Res, _$WeatherMainStateImpl>
    implements _$$WeatherMainStateImplCopyWith<$Res> {
  __$$WeatherMainStateImplCopyWithImpl(_$WeatherMainStateImpl _value,
      $Res Function(_$WeatherMainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherInfo = null,
  }) {
    return _then(_$WeatherMainStateImpl(
      weatherInfo: null == weatherInfo
          ? _value._weatherInfo
          : weatherInfo // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
    ));
  }
}

/// @nodoc

class _$WeatherMainStateImpl
    with DiagnosticableTreeMixin
    implements _WeatherMainState {
  const _$WeatherMainStateImpl({final List<WeatherInfo> weatherInfo = const []})
      : _weatherInfo = weatherInfo;

  final List<WeatherInfo> _weatherInfo;
  @override
  @JsonKey()
  List<WeatherInfo> get weatherInfo {
    if (_weatherInfo is EqualUnmodifiableListView) return _weatherInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherInfo);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherMainState(weatherInfo: $weatherInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherMainState'))
      ..add(DiagnosticsProperty('weatherInfo', weatherInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherMainStateImpl &&
            const DeepCollectionEquality()
                .equals(other._weatherInfo, _weatherInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_weatherInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherMainStateImplCopyWith<_$WeatherMainStateImpl> get copyWith =>
      __$$WeatherMainStateImplCopyWithImpl<_$WeatherMainStateImpl>(
          this, _$identity);
}

abstract class _WeatherMainState implements WeatherMainState {
  const factory _WeatherMainState({final List<WeatherInfo> weatherInfo}) =
      _$WeatherMainStateImpl;

  @override
  List<WeatherInfo> get weatherInfo;
  @override
  @JsonKey(ignore: true)
  _$$WeatherMainStateImplCopyWith<_$WeatherMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
