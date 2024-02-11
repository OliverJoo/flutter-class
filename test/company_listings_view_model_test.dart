import 'package:flutter_class/us_stock_app/data/data_source/local/company_listing_entity.dart';
import 'package:flutter_class/us_stock_app/data/data_source/local/stock_dao.dart';
import 'package:flutter_class/us_stock_app/data/data_source/remote/stock_api.dart';
import 'package:flutter_class/us_stock_app/data/repository/stock_repository_impl.dart';
import 'package:flutter_class/us_stock_app/presentation/company_listings/company_listings_view_mode.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

void main() {
  // test('viewModel test for data access in creation', () async {
  //   Hive.init(null);
  //   Hive.registerAdapter(CompanyListingEntityAdapter());
  //
  //   final _api = StockApi();
  //   final _dao = StockDao();
  //   final viewModel =
  //       CompanyListingViewModel(StockRepositoryImpl(api: _api, dao: _dao));
  //
  //   expect(viewModel.state.companies.isNotEmpty, true);
  // });
}
