import 'package:flutter/material.dart';

import '../model/image_item.dart';
import '../repository/image_item_repository_impl.dart';

class MainViewModel extends ChangeNotifier {
  final ImageItemRepositoryImpl repository;
  bool isLoading = false;

  MainViewModel({
    required this.repository,
  });

  List<ImageItem> imageItems = [];

  Future<void> searchImage(String query) async {
    isLoading = true;
    notifyListeners();

    imageItems = await repository.getImageItems(query);

    isLoading = false;
    notifyListeners();
  }
}
