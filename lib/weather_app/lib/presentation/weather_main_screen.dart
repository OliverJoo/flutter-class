import 'package:flutter/material.dart';
import 'package:flutter_class/dust_info/air_result.dart';
import 'package:flutter_class/weather_app/lib/presentation/weather_main_view_model.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class WeatherMainScreen extends StatefulWidget {
  const WeatherMainScreen({super.key});

  @override
  State<WeatherMainScreen> createState() => _WeatherMainScreenState();
}

class _WeatherMainScreenState extends State<WeatherMainScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<WeatherMainViewModel>().searchWeatherInfo(1, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WeatherMainViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView.builder(
            itemCount: state.weatherInfo.length,
            itemBuilder: (
              context,
              index,
            ) {
              return ListTile(
                title: Row(
                  children: [
                    Column(
                      children: [
                        Text(DateFormat('MM/dd 일 HH 시')
                            .format(state.weatherInfo[index].time)),
                        Text('날씨코드: ${state.weatherInfo[index].weatherCode}'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            '온도: ${state.weatherInfo[index].temperature2m} 습도: ${state.weatherInfo[index].relativeHumidity2m}'),
                        Text(
                            '바람: ${state.weatherInfo[index].windSpeed10m} 기압: ${state.weatherInfo[index].pressureMsl}'),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
