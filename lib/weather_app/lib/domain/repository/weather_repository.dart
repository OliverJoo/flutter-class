import 'package:flutter_class/dust_info/air_result.dart';
import 'package:flutter_class/weather_app/lib/core/weather_result.dart';
import 'package:flutter_class/weather_app/lib/domain/model/weather_info.dart';

abstract interface class WeatherRepository {
  Future<WeatherResult<List<WeatherInfo>>> getWeatherInfo(num latitude, num longitude);
}
