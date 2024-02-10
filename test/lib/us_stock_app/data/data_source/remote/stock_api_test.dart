import 'dart:math';

import 'package:flutter_class/us_stock_app/data/csv/company_listings_parser.dart';
import 'package:flutter_class/us_stock_app/data/data_source/remote/stock_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('network check', () async{
    final response = await StockApi().getListings();
    final _parser = CompanyListingsParser();
    final remoteListings = await _parser.parse(response.body);

    expect(remoteListings[0].symbol, 'A');
    expect(remoteListings[0].name, 'Agilent Technologies Inc');
    expect(remoteListings[0].exchange, 'NYSE');

  });
}