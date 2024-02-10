import 'package:flutter_class/us_stock_app/domain/model/company_info.dart';
import 'package:flutter_class/us_stock_app/domain/model/intraday_info.dart';

import '../../util/result.dart';
import '../model/company_listing.dart';

abstract class StockRepository {
  Future<Result<List<CompanyListing>>> getCompanyListings(
    bool fetchFromRemote,
    String query,
  );

  Future<Result<CompanyInfo>> getCompanyInfo(String symbol);

  Future<Result<List<IntradayInfo>>> getIntradayInfo(String symbol);
}
