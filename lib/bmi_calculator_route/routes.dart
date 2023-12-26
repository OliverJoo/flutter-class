import 'package:go_router/go_router.dart';

import 'bmi_cal_main_screen.dart';
import 'bmi_cal_result_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/result',
      builder: (context, state) {
        final double weight =
            double.parse(state.uri.queryParameters['weight']!);
        final double height =
            double.parse(state.uri.queryParameters['height']!);
        print('height: $height weight: $weight');

        return ResultScreen(height: height, weight: weight);
      },
    ),
  ],
);
