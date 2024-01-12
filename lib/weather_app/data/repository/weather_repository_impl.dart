import 'package:flutter_class/weather_app/core/weather_result.dart';
import 'package:flutter_class/weather_app/domain/model/weather_info.dart';
import '../../domain/repository/weather_repository.dart';
import '../data_source/open_meteo_api.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<WeatherResult<List<WeatherInfo>>> getWeatherInfo(
      num latitude, num longitude) async {
    final meteoDto = await OpenMeteoApi().getMeteoWeatherInfo(37.566, 126.9784); // for test
    final List<WeatherInfo> weatherInfoList = [];

    try {
      if (meteoDto.hourly != null) {
        final listSize = meteoDto.hourly!.time!.length;
        for (int i = 0; i < listSize; i++) {
          weatherInfoList.add(WeatherInfo(
            time: DateTime.parse(meteoDto.hourly!.time![i]),
            temperature2m: meteoDto.hourly!.temperature2m![i],
            relativeHumidity2m: meteoDto.hourly!.relativeHumidity2m![i],
            weatherCode: meteoDto.hourly!.weatherCode![i],
            pressureMsl: meteoDto.hourly!.pressureMsl![i],
            windSpeed10m: meteoDto.hourly!.windSpeed10m![i],
          ));
        }
      }
      return WeatherResult.success(weatherInfoList);
    } catch (e) {
      return WeatherResult.error(Exception(e.toString()));
    }
  }
}
