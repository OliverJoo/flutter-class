import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main_event.freezed.dart';

@freezed
sealed class MainEvent<T> with _$MainEvent<T> {
  const factory MainEvent.showSnackBar(String msg) = ShowSnackBar;

  const factory MainEvent.showDialog(String e) = ShowDialog;
}
