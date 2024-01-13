import 'package:flutter_class/movie_app/data/data_source/tmdb_interface.dart';
import 'package:flutter_class/movie_app/data/dto/tmdb_movie_detail_dto.dart';
import 'package:tmdb_api/tmdb_api.dart';

import '../../core/url_collection.dart';
import '../dto/tmdb_movie_dto.dart';

class TmdbApi implements TmdbInterface {
  @override
  Future<TmdbMovieDto> getTmdbMovieResults(String query) async {
    final tmdb = TMDB(ApiKeys(UrlCollection.api_key, 'apiReadAccessTokenv4'),
        defaultLanguage: 'ko');
    switch (query) {
      case TmdbRequestList.NOW_PLAYING:
        return TmdbMovieDto.fromJson(await tmdb.v3.movies.getNowPlaying());
      case TmdbRequestList.POPULAR:
        return TmdbMovieDto.fromJson(await tmdb.v3.movies.getPopular());
      case TmdbRequestList.UP_COMING:
        return TmdbMovieDto.fromJson(await tmdb.v3.movies.getUpcoming());
      case TmdbRequestList.TOP_RATES:
        return TmdbMovieDto.fromJson(await tmdb.v3.movies.getTopRated());
    }
    return TmdbMovieDto();
  }
}

Future<void> main(List<String> args) async {
  //api with out console logs
  final tmdb = TMDB(ApiKeys(UrlCollection.api_key, 'apiReadAccessTokenv4'),
      defaultLanguage: 'ko');
  // print(await tmdb.v3.movies.getPopular());

  // var result = TmdbMovieDto.fromJson(await tmdb.v3.movies.getNowPlaying());
  // print(result.results?.map((e) => e.id));
  var result =
      TmdbMovieDetail.fromJson(await tmdb.v3.movies.getDetails(695721));
  print(result);
  // (906126, 572802, 753342, 1071215, 1131755, 695721, 1029575, ..., 853387, 940721)

  // result = TmdbMovieDto.fromJson(await tmdb.v3.movies.getUpcoming());
  // print(result.toString());
  //
  // result = TmdbMovieDto.fromJson(await tmdb.v3.movies.getPopular());
  // print(result.toString());
  // result = TmdbMovieDto.fromJson(await tmdb.v3.movies.getTopRated());
  // print(result.toString());
  print('==============');
  // print(await tmdb.v3.movies.getTopRated());

  // //api with showing all console logs
  // final tmdbWithLogs = TMDB(
  //   ApiKeys(UrlCollection.api_key, 'apiReadAccessTokenv4'),
  //   logConfig: const ConfigLogger.showAll(),
  // );
  // print(await tmdbWithLogs.v3.movies.getPopular());
  // print('==============');
  // //api with showing all console logs
  // final tmdbWithCustomLogs = TMDB(
  //   ApiKeys(UrlCollection.api_key, 'apiReadAccessTokenv4'),
  //   logConfig: const ConfigLogger(
  //     //must be true than only all other logs will be shown
  //     showLogs: true,
  //     showErrorLogs: true,
  //   ),
  // );
  // print(await tmdbWithCustomLogs.v3.movies.getPopular());
  // print('==============');
}
