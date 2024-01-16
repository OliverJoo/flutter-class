enum TmdbPackageRequests{
  UP_COMING, NOW_PLAYING, POPULAR, TOP_RATES
}

enum TmdbUrlRequests{
  kMovieBaseUrl(str:'https://api.themoviedb.org/3/movie/'),
  api_key(str:'ba15579107ebff69b219b0cccf64f1e3111'), // 3
  upcomingUrl(str:'https://api.themoviedb.org/3/movie/upcoming&language=ko'),
  nowPlayingUrl(str:'https://api.themoviedb.org/3/movie/now_playing&language=ko'),
  popularUrl(str:'https://api.themoviedb.org/3/movie/popular&language=ko'),
  topRatesUrl(str:'https://api.themoviedb.org/3/movie/top_rated&language=ko');

  final String str;
  const TmdbUrlRequests({required this.str});
}
// kBaseUrl = 'https://api.themoviedb.org/3/';
// kSearchBaseUrl = 'https://api.themoviedb.org/3/search/movie/';
// kGenreBaseUrl = 'https://api.themoviedb.org/3/genre/movie/list';
// kDiscoverBaseUrl = 'https://api.themoviedb.org/3/discover/movie/';
// kPosterUrl = 'https://image.tmdb.org/t/p/w500';
// kBackdropUrl = 'https://image.tmdb.org/t/p/w1280';
// kProfileUrl = 'https://image.tmdb.org/t/p/w200';
// kLargeProfileUrl = 'https://image.tmdb.org/t/p/w500';

