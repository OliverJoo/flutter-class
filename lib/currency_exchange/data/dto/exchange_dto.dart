class ExchangeRateDto {
// 결과
  final String? result;

// 환율 제공자
  final String? provider;

// 문서 URL
  final String? documentation;

// 이용 약관 URL
  final String? termsOfUse;

// 마지막 업데이트 시간 (Unix 시간)
  final int? timeLastUpdateUnix;

// 마지막 업데이트 시간 (UTC)
  final String? timeLastUpdateUtc;

// 다음 업데이트 시간 (Unix 시간)
  final int? timeNextUpdateUnix;

// 다음 업데이트 시간 (UTC)
  final String? timeNextUpdateUtc;

// 만료 시간 (Unix 시간)
  final int? timeEolUnix;

// 기준 통화 코드
  final String? baseCode;

// 환율
  final Map<String, num>? rates;

  ExchangeRateDto({
    this.result,
    this.provider,
    this.documentation,
    this.termsOfUse,
    this.timeLastUpdateUnix,
    this.timeLastUpdateUtc,
    this.timeNextUpdateUnix,
    this.timeNextUpdateUtc,
    this.timeEolUnix,
    this.baseCode,
    this.rates,
  });

  factory ExchangeRateDto.fromJson(Map<String, dynamic> json) {
    return ExchangeRateDto(
      result: json['result'] as String?,
      provider: json['provider'] as String?,
      documentation: json['documentation'] as String?,
      termsOfUse: json['terms_of_use'] as String?,
      timeLastUpdateUnix: json['time_last_update_unix'] as int?,
      timeLastUpdateUtc: json['time_last_update_utc'] as String?,
      timeNextUpdateUnix: json['time_next_update_unix'] as int?,
      timeNextUpdateUtc: json['time_next_update_utc'] as String?,
      timeEolUnix: json['time_eol_unix'] as int?,
      baseCode: json['base_code'] as String?,
      rates: (json['rates'] as Map<String, dynamic>?)?.map(
        (key, value) => MapEntry(key, value.toDouble()),
      ),
    );
  }

  @override
  String toString() {
    return 'ExchangeRateDto{result: $result, provider: $provider, documentation: $documentation, termsOfUse: $termsOfUse, timeLastUpdateUnix: $timeLastUpdateUnix, timeLastUpdateUtc: $timeLastUpdateUtc, timeNextUpdateUnix: $timeNextUpdateUnix, timeNextUpdateUtc: $timeNextUpdateUtc, timeEolUnix: $timeEolUnix, baseCode: $baseCode, rates: $rates}';
  }
}
