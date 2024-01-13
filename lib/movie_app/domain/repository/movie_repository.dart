import 'package:flutter_class/movie_app/domain/model/movie_info.dart';

import '../../core/movie_result.dart';

abstract interface class MovieRepository{
  Future<MovieResult<List<MovieInfo>>> getMovieInfoList(String query);
}