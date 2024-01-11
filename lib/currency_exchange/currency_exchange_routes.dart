import 'package:flutter_class/currency_exchange/presentation/ui/main/currency_exchange_main_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final currencyExchangeRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => CurrencyExchangeMainScreen(),
    ),
  ],
);
