import 'dart:convert';

import 'package:flutter_class/currency_exchange/data/dto/exchange_dto.dart';
import 'package:flutter_class/currency_exchange/data/mapper/exchange_mapper.dart';
import 'package:flutter_class/currency_exchange/domain/model/rate_result.dart';
import 'package:http/http.dart' as http;

class CurrencyApi {
  Future<ExchangeRateDto> getExchangeRateResult(String baseCode) async {
    final response = await http.get(Uri.parse(
        'https://open.er-api.com/v6/latest/$baseCode'));

    return ExchangeRateDto.fromJson(jsonDecode(response.body));
  }
}

void main() async {
  final ExchangeRateDto dto = await CurrencyApi().getExchangeRateResult('KRW');
  // print(dto.toString());
  final rateResult = dto.toRateResult();
  print(rateResult.toString());

  // print(dto.rates);
  // print(dto.timeNextUpdateUnix);
  // print(dto.timeNextUpdateUnix != null
  //     ? DateTime.fromMillisecondsSinceEpoch(dto.timeNextUpdateUnix! * 1000)
  //         : DateTime.now());
  // print(DateTime.now());
  // print(dto.baseCode);

}
// return Result.success(dto.hits!.map((e) => e.toImageItem()).toList());
