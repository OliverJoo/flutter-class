import 'package:flutter/material.dart';
import 'package:flutter_class/240102/ui/widget/main_state.dart';

import '../model/image_item.dart';
import '../repository/image_item_repository.dart';

class MainViewModel extends ChangeNotifier {
  final ImageItemRepository _repository;
  MainState _state = const MainState();

  MainState get state => _state;

  MainViewModel({
    required ImageItemRepository repository,
  }) : _repository = repository;

  Future<void> searchImage(String query) async {
    _state = _state.copyWith(
      isLoading: true,
    );
    notifyListeners();

    try {
      _state = _state.copyWith(
          isLoading: false, imageItems: await _repository.getImageItems(query));
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
  }
}
