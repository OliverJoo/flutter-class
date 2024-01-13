import 'package:flutter_class/movie_app/data/data_source/tmdb_interface.dart';
import 'package:tmdb_api/tmdb_api.dart';

import '../../core/api_request_collection.dart';
import '../dto/tmdb_movie_dto.dart';

class TmdbPackageApi implements TmdbInterface {
  @override
  Future<TmdbMovieDto> getTmdbMovieResults(Enum query) async {
    final tmdb = TMDB(
        ApiKeys(TmdbUrlRequests.api_key.str, 'apiReadAccessTokenv4'),
        defaultLanguage: 'ko');
    switch (query) {
      case TmdbPackageRequests.NOW_PLAYING:
        return TmdbMovieDto.fromJson(await tmdb.v3.movies.getNowPlaying());
      case TmdbPackageRequests.POPULAR:
        return TmdbMovieDto.fromJson(await tmdb.v3.movies.getPopular());
      case TmdbPackageRequests.UP_COMING:
        return TmdbMovieDto.fromJson(await tmdb.v3.movies.getUpcoming());
      case TmdbPackageRequests.TOP_RATES:
        return TmdbMovieDto.fromJson(await tmdb.v3.movies.getTopRated());
    }
    return TmdbMovieDto();
  }
}

Future<void> main(List<String> args) async {
  //api with out console logs
  // final tmdb = TMDB(ApiKeys(TmdbUrlRequests.api_key.str, 'apiReadAccessTokenv4'),
  //     defaultLanguage: 'ko');
  // print(await tmdb.v3.movies.getPopular());

  // var result = TmdbMovieDto.fromJson(await tmdb.v3.movies.getNowPlaying());
  // print(result.results?.map((e) => e.id));

  // movieIds : 906126, 572802, 753342, 1071215, 1131755, 695721, 1029575, 853387, 940721
  // var result =
  //     TmdbMovieDetail.fromJson(await tmdb.v3.movies.getDetails(695721));
  final result =
      await TmdbPackageApi().getTmdbMovieResults(TmdbPackageRequests.POPULAR);
  print(result);

}
