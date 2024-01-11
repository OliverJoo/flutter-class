import 'package:flutter_class/currency_exchange/data/dto/exchange_dto.dart';
import 'package:flutter_class/currency_exchange/domain/model/rate_result.dart';

extension DtoToModel on ExchangeRateDto {
  RateResult toRateResult() {
    return RateResult(
      nextUpdateTime: timeNextUpdateUnix != null
          ? DateTime.fromMillisecondsSinceEpoch(timeNextUpdateUnix! * 1000)
          : DateTime.now(), // can't set non-constant default value with freezed pkg
      baseCode: baseCode ?? 'KRW',
      rates: rates ?? {},
    // );

    // return RateResult(
    // nextUpdateTime: timeNextUpdateUnix != null
    //     ? DateTime.fromMillisecondsSinceEpoch(timeNextUpdateUnix! * 1000)
    //     : DateTime.now(),
    // baseCode: baseCode ?? 'KRW',
    // rates: rates ?? {},
    );
  }
}
