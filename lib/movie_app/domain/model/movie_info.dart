import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie_info.freezed.dart';

@freezed
class MovieInfo with _$MovieInfo {
  const factory MovieInfo({
    required String title,
    required bool isAdult,
    required int movieId,
    required String overview,
    required double voteAverage,
    required int voteCount,
    required List<int> genreIds,
    required DateTime releasedDate,
    required String posterPath,
  }) = _MovieInfo;
}
