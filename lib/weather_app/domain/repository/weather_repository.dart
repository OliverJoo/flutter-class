import 'package:flutter_class/weather_app/core/weather_result.dart';
import 'package:flutter_class/weather_app/domain/model/weather_info.dart';

abstract interface class WeatherRepository {
  Future<WeatherResult<List<WeatherInfo>>> getWeatherInfo(num latitude, num longitude);
}
