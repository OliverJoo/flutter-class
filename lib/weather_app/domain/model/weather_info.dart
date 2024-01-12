class WeatherInfo {
  final DateTime time;
  final num temperature2m;
  final num relativeHumidity2m;
  final num weatherCode;
  final num pressureMsl;
  final num windSpeed10m;

//<editor-fold desc="Data Methods">
  const WeatherInfo({
    required this.time,
    required this.temperature2m,
    required this.relativeHumidity2m,
    required this.weatherCode,
    required this.pressureMsl,
    required this.windSpeed10m,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WeatherInfo &&
          runtimeType == other.runtimeType &&
          time == other.time &&
          temperature2m == other.temperature2m &&
          relativeHumidity2m == other.relativeHumidity2m &&
          weatherCode == other.weatherCode &&
          pressureMsl == other.pressureMsl &&
          windSpeed10m == other.windSpeed10m);

  @override
  int get hashCode =>
      time.hashCode ^
      temperature2m.hashCode ^
      relativeHumidity2m.hashCode ^
      weatherCode.hashCode ^
      pressureMsl.hashCode ^
      windSpeed10m.hashCode;

  @override
  String toString() {
    return 'WeatherInfo{' +
        ' time: $time,' +
        ' temperature2m: $temperature2m,' +
        ' relativeHumidity2m: $relativeHumidity2m,' +
        ' weatherCode: $weatherCode,' +
        ' pressureMsl: $pressureMsl,' +
        ' windSpeed10m: $windSpeed10m,' +
        '}';
  }

  WeatherInfo copyWith({
    DateTime? time,
    num? temperature2m,
    num? relativeHumidity2m,
    int? weatherCode,
    num? pressureMsl,
    num? windSpeed10m,
  }) {
    return WeatherInfo(
      time: time ?? this.time,
      temperature2m: temperature2m ?? this.temperature2m,
      relativeHumidity2m: relativeHumidity2m ?? this.relativeHumidity2m,
      weatherCode: weatherCode ?? this.weatherCode,
      pressureMsl: pressureMsl ?? this.pressureMsl,
      windSpeed10m: windSpeed10m ?? this.windSpeed10m,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'time': this.time,
      'temperature2m': this.temperature2m,
      'relativeHumidity2m': this.relativeHumidity2m,
      'weatherCode': this.weatherCode,
      'pressureMsl': this.pressureMsl,
      'windSpeed10m': this.windSpeed10m,
    };
  }

  factory WeatherInfo.fromMap(Map<String, dynamic> map) {
    return WeatherInfo(
      time: map['time'] as DateTime,
      temperature2m: map['temperature2m'] as num,
      relativeHumidity2m: map['relativeHumidity2m'] as num,
      weatherCode: map['weatherCode'] as int,
      pressureMsl: map['pressureMsl'] as num,
      windSpeed10m: map['windSpeed10m'] as num,
    );
  }

//</editor-fold>
}
