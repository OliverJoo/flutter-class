import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie_result.freezed.dart';

@freezed
sealed class MovieResult<T> with _$MovieResult<T> {
  const factory MovieResult.success(T data) = Success;
  const factory MovieResult.error(Exception e) = Error;
}
