import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather_result.freezed.dart';

@freezed
sealed class WeatherResult<T> with _$WeatherResult<T> {
  const factory WeatherResult.success(T data) = Success;
  const factory WeatherResult.error(Exception e) = Error;
}