import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../model/image_item.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  // ImageItem inside of Constructor should have fromJson(), not fromMap()
  const factory MainState({
    @Default([]) List<ImageItem> imageItems, // set default value as []
    @Default(false) bool isLoading, // set default value as false
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) =>
      _$MainStateFromJson(json);
}
