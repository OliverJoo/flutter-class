import 'package:flutter_class/240102/repository/image_item_repository_impl.dart';
import 'package:get_it/get_it.dart';

import '../repository/image_item_repository.dart';
import '../ui/main_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<ImageItemRepository>(ImageItemRepositoryImpl());

  GetIt.I.registerFactory<MainViewModel>(
      () => MainViewModel(repository: getIt<ImageItemRepository>()));
}
