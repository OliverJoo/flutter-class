import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_class/us_stock_app/domain/repository/stock_repository.dart';
import 'package:flutter_class/us_stock_app/presentation/company_listings/company_listings_action.dart';
import 'package:flutter_class/us_stock_app/presentation/company_listings/company_listings_state.dart';

class CompanyListingViewModel with ChangeNotifier {
  final StockRepository _repository;
  var _state = const CompanyListingsState();

  Timer? _debounce;

  CompanyListingsState get state => _state;

  CompanyListingViewModel(this._repository) {
    _getCompanyListings();
  }

  void onAction(CompanyListingsAction action) {
    action.when(
      refresh: () => _getCompanyListings(fetchFromRemote: true),
      onSearchQueryChange: (query) {
        _debounce?.cancel(); // not execute cancel if null
        _debounce = Timer(const Duration(milliseconds: 500), () {
          _getCompanyListings(query: query);
        });
      },
    );
  }

  Future _getCompanyListings({
    bool fetchFromRemote = false,
    String query = '',
  }) async {
    _state = _state.copyWith(
      isLoading: true,
    );
    notifyListeners();

    final result = await _repository.getCompanyListings(fetchFromRemote, query);
    result.when(success: (listings) {
      _state = state.copyWith(
        companies: listings,
      );
      // debugPrint(_state.toString());
    }, error: (e) {
      // TODO: Error handling
      debugPrint('remote error : ' + e.toString());
    });

    _state = _state.copyWith(
      isLoading: false,
    );
    notifyListeners();
  }
}
