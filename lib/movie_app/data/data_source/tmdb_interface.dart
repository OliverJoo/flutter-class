import '../dto/tmdb_movie_dto.dart';

abstract interface class TmdbInterface {
  Future<TmdbMovieDto> getTmdbMovieResults(String query);
}
