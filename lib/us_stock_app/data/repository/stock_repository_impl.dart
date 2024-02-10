import 'package:flutter_class/us_stock_app/data/csv/company_listings_parser.dart';
import 'package:flutter_class/us_stock_app/data/csv/intraday_info_parser.dart';
import 'package:flutter_class/us_stock_app/data/mapper/company_mapper.dart';
import 'package:flutter_class/us_stock_app/domain/model/company_info.dart';
import 'package:flutter_class/us_stock_app/domain/model/company_listing.dart';
import 'package:flutter_class/us_stock_app/domain/model/intraday_info.dart';
import 'package:flutter_class/us_stock_app/domain/repository/stock_repository.dart';
import 'package:flutter_class/us_stock_app/util/result.dart';

import '../data_source/local/stock_dao.dart';
import '../data_source/remote/stock_api.dart';

class StockRepositoryImpl implements StockRepository {
  final StockApi _api;
  final StockDao _dao;
  final _compayListingsParser = CompanyListingsParser();
  final _intradayInfoParser = IntradayInfoParser();

  StockRepositoryImpl({
    required StockApi api,
    required StockDao dao,
  })  : _api = api,
        _dao = dao;

  @override
  Future<Result<List<CompanyListing>>> getCompanyListings(
      bool fetchFromRemote, String query) async {
    // finding in cache
    final localListings = await _dao.searchCompanyListing(query);

    // get from remote if can't find in cache
    final isDbEmpty = localListings.isEmpty && query.isEmpty;
    final shouldJustLoadFromCache = !isDbEmpty && !fetchFromRemote;

    // cache
    if (shouldJustLoadFromCache) {
      return Result.success(
          localListings.map((e) => e.toCompanyListing()).toList());
    }

    // remote
    try {
      final response = await _api.getListings();
      final remoteListings = await _compayListingsParser.parse(response.body);

      // caching clear then add
      await _dao.clearCompanyListings();
      await _dao.insertCompanyListings(
          remoteListings.map((e) => e.toCompanyListingEntity()).toList());

      print(remoteListings);

      return Result.success(remoteListings);
    } catch (e) {
      print(e.toString());
      return Result.error(Exception('Data Load Fail!'));
    }
  }

  @override
  Future<Result<CompanyInfo>> getCompanyInfo(String symbol) async {
    try {
      final dto = await _api.getCompanyInfo(symbol: symbol);
      return Result.success(dto.toCompanyInfo());
    } catch (e) {
      return Result.error(
          Exception('Company Info Load Fail! : ${e.toString()}'));
    }
  }

  @override
  Future<Result<List<IntradayInfo>>> getIntradayInfo(String symbol) async {
    try {
      final response = await _api.getIntradayInfo(symbol: symbol);
      final results = await _intradayInfoParser.parse(response.body);
      return Result.success(results);
    } catch (e) {
      return Result.error(
          Exception('intraday info load fail!! : ${e.toString()}'));
    }
  }
}
