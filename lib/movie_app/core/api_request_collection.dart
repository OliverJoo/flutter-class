enum TmdbPackageRequests{
  UP_COMING, NOW_PLAYING, POPULAR, TOP_RATES
}

enum TmdbUrlRequests{
  kMovieBaseUrl(str:'https://api.themoviedb.org/3/movie/'),
  api_key(str:'ba15579107ebff69b219b0cccf64f1e3'),
  upcomingUrl(str:'https://api.themoviedb.org/3/movie/upcoming&language=ko'),
  nowPlayingUrl(str:'https://api.themoviedb.org/3/movie/now_playing&language=ko'),
  popularUrl(str:'https://api.themoviedb.org/3/movie/popular&language=ko'),
  topRatesUrl(str:'https://api.themoviedb.org/3/movie/top_rated&language=ko');

  final String str;
  const TmdbUrlRequests({required this.str});
}


  // const String kBaseUrl = 'https://api.themoviedb.org/3/';
  // const String kSearchBaseUrl = 'https://api.themoviedb.org/3/search/movie/';
  // const String kGenreBaseUrl = 'https://api.themoviedb.org/3/genre/movie/list';
  // const String kDiscoverBaseUrl = 'https://api.themoviedb.org/3/discover/movie/';
  // const String kPosterUrl = 'https://image.tmdb.org/t/p/w500';
  // const String kBackdropUrl = 'https://image.tmdb.org/t/p/w1280';
  // const String kProfileUrl = 'https://image.tmdb.org/t/p/w200';
  // const String kLargeProfileUrl = 'https://image.tmdb.org/t/p/w500';
  // const String kYoutubeUrl = 'https://www.youtube.com/watch?v=';

