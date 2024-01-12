import 'dart:convert';

import 'package:flutter_class/weather_app/data/dto/MeteoDto.dart';
import 'package:http/http.dart' as http;

class OpenMeteoApi {
  static const baseUrl = 'https://api.open-meteo.com';
  static const fixedParams =
      '/v1/forecast?hourly=temperature_2m,relative_humidity_2m,weather_code,pressure_msl,wind_speed_10m&';

  Future<MeteoDto> getMeteoWeatherInfo(num latitude, num longitude) async {
    final response = await http.get(Uri.parse('$baseUrl${fixedParams}latitude=$latitude&longitude=$longitude'));
    return MeteoDto.fromJson(jsonDecode(response.body));
  }
}