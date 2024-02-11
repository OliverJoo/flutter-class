import 'package:flutter/material.dart';
import 'package:flutter_class/us_stock_app/data/data_source/local/company_listing_entity.dart';
import 'package:flutter_class/us_stock_app/data/data_source/local/stock_dao.dart';
import 'package:flutter_class/us_stock_app/data/data_source/remote/stock_api.dart';
import 'package:flutter_class/us_stock_app/data/repository/stock_repository_impl.dart';
import 'package:flutter_class/us_stock_app/domain/repository/stock_repository.dart';
import 'package:flutter_class/us_stock_app/presentation/company_listings/company_listings_screen.dart';
import 'package:flutter_class/us_stock_app/presentation/company_listings/company_listings_view_mode.dart';
import 'package:flutter_class/us_stock_app/util/color_schemes.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:get_it/get_it.dart';

// Hive, GetIt, MultiProvider, ViewModel Constructor usage, callback actions
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CompanyListingEntityAdapter());

  final repository = StockRepositoryImpl(
    api: StockApi(),
    dao: StockDao(),
  );

  GetIt.instance.registerSingleton<StockRepository>(repository);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CompanyListingViewModel(
            repository,
            // StockRepositoryImpl(
            //   api: StockApi(),
            //   dao: StockDao(),
            // ),
          ),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'US Stock App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.system,
      home: CompanyListingsScreen(),
    );
  }
}
