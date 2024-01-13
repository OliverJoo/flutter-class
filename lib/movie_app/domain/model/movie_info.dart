import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie_info.freezed.dart';

@freezed
class MovieInfo with _$MovieInfo {
  const factory MovieInfo({
    required String title,
    required bool isAdult,
    required num movieId,
    required String overview,
    required num voteAverage,
    required num voteCount,
    required List<num> genreIds,
    required String releasedDate,
    required String posterPath,
  }) = _MovieInfo;
}