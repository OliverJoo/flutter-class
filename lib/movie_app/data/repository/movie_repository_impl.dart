import 'package:flutter_class/movie_app/core/movie_result.dart';

import 'package:flutter_class/movie_app/domain/model/movie_info.dart';

import '../../domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  @override
  Future<MovieResult<List<MovieInfo>>> getMovieInfoList(String query) {
    // TODO: implement getMovieInfoList
    throw UnimplementedError();
  }
}
