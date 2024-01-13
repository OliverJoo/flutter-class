import 'package:flutter_class/movie_app/core/movie_result.dart';
import 'package:flutter_class/movie_app/data/data_source/tmdb_interface.dart';
import 'package:flutter_class/movie_app/data/mapper/tmdb_mapper.dart';
import 'package:flutter_class/movie_app/domain/model/movie_info.dart';

import '../../domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final TmdbInterface tmdbInterface;

  const MovieRepositoryImpl({
    required this.tmdbInterface,
  });

  @override
  Future<MovieResult<List<MovieInfo>>> getMovieInfoList(Enum query) async {
    try {
      final result = await tmdbInterface.getTmdbMovieResults(query);
      print('result.results : ${result.results}');

      if (result.results != null) {
        print((result.results!.map((e) => e.toMovieInfo())).toList());
        return MovieResult.success(
            (result.results!.map((e) => e.toMovieInfo())).toList());
      }
    } catch (e) {
      return MovieResult.error(Exception(e.toString()));
    }

    return MovieResult.error(throw Exception());
  }
}
