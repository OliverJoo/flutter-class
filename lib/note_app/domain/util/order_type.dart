import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'order_type.freezed.dart';

@freezed
sealed class OrderType<T> with _$OrderType<T> {
  const factory OrderType.ascending() = Ascending;
  const factory OrderType.descending() = Descending;
}