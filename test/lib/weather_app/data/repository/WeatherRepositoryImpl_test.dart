import 'package:flutter_class/weather_app/core/weather_result.dart';
import 'package:flutter_class/weather_app/data/repository/weather_repository_impl.dart';
import 'package:flutter_class/weather_app/domain/model/weather_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('WeatherRepositoryImpl() getWeatherInfo()', () async {
    final result = await WeatherRepositoryImpl().getWeatherInfo(1, 1);

    switch (result) {
      case Success<List<WeatherInfo>>():
        expect(result.data.length, 168);
        expect(result.data[0].time.toString(), '2024-01-10 00:00:00.000');
        expect(result.data[0].temperature2m, -5.7);
      case Error<List<WeatherInfo>>():
      // TODO: Handle this case.
    }
  });
}
