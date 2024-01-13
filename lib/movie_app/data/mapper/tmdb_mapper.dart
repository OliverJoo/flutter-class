import 'package:flutter_class/movie_app/data/dto/tmdb_movie_dto.dart';
import 'package:flutter_class/movie_app/domain/model/movie_info.dart';

extension ResultsToMovieInfo on Results {
  MovieInfo toMovieInfo() {
    return MovieInfo(
      title: title ?? 'Napoleon',
      isAdult: adult ?? false,
      movieId: id ?? 753342,
      overview: overview ??
          'An epic that details the checkered rise and fall of French Emperor Napoleon Bonaparte and his relentless journey to power through the prism of his addictive, volatile relationship with his wife, Josephine.',
      voteAverage: voteAverage ?? 6.461,
      voteCount: voteCount ?? 10226,
      genreIds: genreIds ?? [36, 10752, 18],
      releasedDate: releaseDate ?? '2023-11-22',
      posterPath: posterPath ?? 'jE5o7y9K6pZtWNNMEw3IdpHuncR.jpg',
    );
  }
}
