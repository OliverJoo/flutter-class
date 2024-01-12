import 'package:flutter/foundation.dart';
import 'package:flutter_class/weather_app/core/weather_result.dart';
import 'package:flutter_class/weather_app/domain/model/weather_info.dart';
import 'package:flutter_class/weather_app/domain/repository/weather_repository.dart';
import 'package:flutter_class/weather_app/presentation/weather_main_state.dart';

class WeatherMainViewModel with ChangeNotifier {
  final WeatherRepository repository;
  WeatherMainState _state = const WeatherMainState();

  WeatherMainState get state => _state;

  WeatherMainViewModel({
    required this.repository,
  });

  Future<void> searchWeatherInfo(num latitude, num longitude) async {
    final result = await repository.getWeatherInfo(1, 1);
    notifyListeners();

    switch (result) {
      case Success<List<WeatherInfo>>():
        _state = _state.copyWith(weatherInfo: result.data);
        notifyListeners();
      case Error<List<WeatherInfo>>():
      // TODO: Handle this case.
    }
  }
}
