import 'package:flutter_class/240102/UI/image_main_screen.dart';
import 'package:flutter_class/240102/ui/main_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'di/di_setup.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt<MainViewModel>(),
        child: const MainScreen(),
      ),
    ),
  ],
);
