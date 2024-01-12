import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../domain/model/weather_info.dart';

part 'weather_main_state.freezed.dart';

@freezed
class WeatherMainState with _$WeatherMainState {
  const factory WeatherMainState({
    @Default([]) List<WeatherInfo> weatherInfo,
  }) = _WeatherMainState;
}
