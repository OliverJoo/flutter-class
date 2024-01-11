import 'package:flutter_class/currency_exchange/core/result.dart';

import '../model/rate_result.dart';

abstract interface class RateRepository {
  Future<Result<RateResult>> getRateResult(String baseCode);
}
