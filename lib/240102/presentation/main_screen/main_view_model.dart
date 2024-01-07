import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_class/240102/core/result.dart';
import 'package:flutter_class/240102/domain/model/image_item.dart';
import 'package:flutter_class/240102/domain/repository/image_item_repository.dart';
import 'package:flutter_class/240102/presentation/main_screen/widget/main_state.dart';


import 'main_event.dart';


class MainViewModel extends ChangeNotifier {
  final ImageItemRepository _repository;
  MainState _state = const MainState();

  final _eventController = StreamController<MainEvent>();

  Stream<MainEvent> get eventStream => _eventController.stream;

  MainState get state => _state;

  MainViewModel({
    required ImageItemRepository repository,
  }) : _repository = repository;

  Future<void> searchImage(String query) async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getImageItems(query);

    switch (result) {
      case Success<List<ImageItem>>():
        _state =
            _state.copyWith(isLoading: false, imageItems: result.data.toList());
        notifyListeners();
        _eventController.add(const MainEvent.showSnackBar('Success!'));

      case Error<List<ImageItem>>():
        _state = _state.copyWith(isLoading: false);
        notifyListeners();
        _eventController.add(
            const MainEvent.showDialog('Fail!')); // ${result.e.toString()}'));
    }
  }
}
