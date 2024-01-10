class MeteoDto {
  MeteoDto({
      this.latitude, 
      this.longitude, 
      this.generationtimeMs, 
      this.utcOffsetSeconds, 
      this.timezone, 
      this.timezoneAbbreviation, 
      this.elevation, 
      this.hourlyUnits, 
      this.hourly,});

  @override
  String toString() {
    return 'MeteoDto{latitude: $latitude, longitude: $longitude, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, hourlyUnits: $hourlyUnits, hourly: $hourly}';
  }

  MeteoDto.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    generationtimeMs = json['generationtime_ms'];
    utcOffsetSeconds = json['utc_offset_seconds'];
    timezone = json['timezone'];
    timezoneAbbreviation = json['timezone_abbreviation'];
    elevation = json['elevation'];
    hourlyUnits = json['hourly_units'] != null ? HourlyUnits.fromJson(json['hourly_units']) : null;
    hourly = json['hourly'] != null ? Hourly.fromJson(json['hourly']) : null;
  }
  num? latitude;
  num? longitude;
  num? generationtimeMs;
  num? utcOffsetSeconds;
  String? timezone;
  String? timezoneAbbreviation;
  num? elevation;
  HourlyUnits? hourlyUnits;
  Hourly? hourly;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['generationtime_ms'] = generationtimeMs;
    map['utc_offset_seconds'] = utcOffsetSeconds;
    map['timezone'] = timezone;
    map['timezone_abbreviation'] = timezoneAbbreviation;
    map['elevation'] = elevation;
    if (hourlyUnits != null) {
      map['hourly_units'] = hourlyUnits?.toJson();
    }
    if (hourly != null) {
      map['hourly'] = hourly?.toJson();
    }
    return map;
  }

}

class Hourly {
  Hourly({
      this.time, 
      this.temperature2m, 
      this.relativeHumidity2m, 
      this.weatherCode, 
      this.pressureMsl, 
      this.windSpeed10m,});

  Hourly.fromJson(dynamic json) {
    time = json['time'] != null ? json['time'].cast<String>() : [];
    temperature2m = json['temperature_2m'] != null ? json['temperature_2m'].cast<num>() : [];
    relativeHumidity2m = json['relative_humidity_2m'] != null ? json['relative_humidity_2m'].cast<num>() : [];
    weatherCode = json['weather_code'] != null ? json['weather_code'].cast<num>() : [];
    pressureMsl = json['pressure_msl'] != null ? json['pressure_msl'].cast<num>() : [];
    windSpeed10m = json['wind_speed_10m'] != null ? json['wind_speed_10m'].cast<num>() : [];
  }
  List<String>? time;
  List<num>? temperature2m;
  List<num>? relativeHumidity2m;
  List<num>? weatherCode;
  List<num>? pressureMsl;
  List<num>? windSpeed10m;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['temperature_2m'] = temperature2m;
    map['relative_humidity_2m'] = relativeHumidity2m;
    map['weather_code'] = weatherCode;
    map['pressure_msl'] = pressureMsl;
    map['wind_speed_10m'] = windSpeed10m;
    return map;
  }

  @override
  String toString() {
    return 'Hourly{time: $time, temperature2m: $temperature2m, relativeHumidity2m: $relativeHumidity2m, weatherCode: $weatherCode, pressureMsl: $pressureMsl, windSpeed10m: $windSpeed10m}';
  }
}

class HourlyUnits {
  HourlyUnits({
      this.time, 
      this.temperature2m, 
      this.relativeHumidity2m, 
      this.weatherCode, 
      this.pressureMsl, 
      this.windSpeed10m,});

  HourlyUnits.fromJson(dynamic json) {
    time = json['time'];
    temperature2m = json['temperature_2m'];
    relativeHumidity2m = json['relative_humidity_2m'];
    weatherCode = json['weather_code'];
    pressureMsl = json['pressure_msl'];
    windSpeed10m = json['wind_speed_10m'];
  }
  String? time;
  String? temperature2m;
  String? relativeHumidity2m;
  String? weatherCode;
  String? pressureMsl;
  String? windSpeed10m;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['temperature_2m'] = temperature2m;
    map['relative_humidity_2m'] = relativeHumidity2m;
    map['weather_code'] = weatherCode;
    map['pressure_msl'] = pressureMsl;
    map['wind_speed_10m'] = windSpeed10m;
    return map;
  }

  @override
  String toString() {
    return 'HourlyUnits{time: $time, temperature2m: $temperature2m, relativeHumidity2m: $relativeHumidity2m, weatherCode: $weatherCode, pressureMsl: $pressureMsl, windSpeed10m: $windSpeed10m}';
  }
}