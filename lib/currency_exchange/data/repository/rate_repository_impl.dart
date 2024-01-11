import 'package:flutter_class/currency_exchange/core/result.dart';
import 'package:flutter_class/currency_exchange/data/data_source/currency_api.dart';
import 'package:flutter_class/currency_exchange/domain/model/rate_result.dart';
import 'package:flutter_class/currency_exchange/domain/repository/rate_repository.dart';

class RateRepositoryImple implements RateRepository{
  @override
  Future<Result<RateResult>> getRateResult(String baseCode) {
    // TODO: implement getRateResult
    throw UnimplementedError();
  }
  

}