import 'package:flutter_class/pixabay_app_clean_architecture/data/repository/image_item_repository_impl.dart';
import 'package:flutter_class/pixabay_app_clean_architecture/domain/repository/image_item_repository.dart';
import 'package:flutter_class/pixabay_app_clean_architecture/presentation/main_screen/main_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<ImageItemRepository>(ImageItemRepositoryImpl());

  GetIt.I.registerFactory<MainViewModel>(
      () => MainViewModel(repository: getIt<ImageItemRepository>()));
}
