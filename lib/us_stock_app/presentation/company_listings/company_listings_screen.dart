import 'package:flutter/material.dart';
import 'package:flutter_class/us_stock_app/domain/repository/stock_repository.dart';
import 'package:flutter_class/us_stock_app/presentation/company_info/company_info_screen.dart';
import 'package:flutter_class/us_stock_app/presentation/company_info/company_info_view_model.dart';
import 'package:flutter_class/us_stock_app/presentation/company_listings/company_listings_action.dart';
import 'package:flutter_class/us_stock_app/presentation/company_listings/company_listings_view_mode.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class CompanyListingsScreen extends StatelessWidget {
  const CompanyListingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CompanyListingViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (query) {
                  // TODO: search
                  viewModel.onAction(
                      CompanyListingsAction.onSearchQueryChange(query));
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  labelText: 'Search...',
                  labelStyle:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  // TODO: refresh
                  viewModel.onAction(CompanyListingsAction.refresh());
                },
                child: ListView.builder(
                    itemCount: state.companies.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(state.companies[index].name),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  final repository =
                                      GetIt.instance<StockRepository>();
                                  final symbol = state.companies[index].symbol;

                                  return ChangeNotifierProvider(
                                    create: (_) => CompanyInfoViewModel(
                                        repository, symbol),
                                    child: const CompanyInfoScreen(),
                                  );
                                }),
                              );
                            },
                          ),
                          Divider(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
