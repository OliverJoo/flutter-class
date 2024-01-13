class UrlCollection{
  static const String kMovieBaseUrl = 'https://api.themoviedb.org/3/movie/';

  static const String api_key = 'ba15579107ebff69b219b0cccf64f1e3';
  static const String upcomingUrl = 'https://api.themoviedb.org/3/movie/upcoming&language=ko';
  static const String nowPlayingUrl = 'https://api.themoviedb.org/3/movie/now_playing&language=ko';
  static const String popularUrl = 'https://api.themoviedb.org/3/movie/popular&language=ko';
  static const String topRatesUrl = 'https://api.themoviedb.org/3/movie/top_rated&language=ko';

  // const String kBaseUrl = 'https://api.themoviedb.org/3/';
  // const String kSearchBaseUrl = 'https://api.themoviedb.org/3/search/movie/';
  // const String kGenreBaseUrl = 'https://api.themoviedb.org/3/genre/movie/list';
  // const String kDiscoverBaseUrl = 'https://api.themoviedb.org/3/discover/movie/';
  // const String kPosterUrl = 'https://image.tmdb.org/t/p/w500';
  // const String kBackdropUrl = 'https://image.tmdb.org/t/p/w1280';
  // const String kProfileUrl = 'https://image.tmdb.org/t/p/w200';
  // const String kLargeProfileUrl = 'https://image.tmdb.org/t/p/w500';
  // const String kYoutubeUrl = 'https://www.youtube.com/watch?v=';
}

enum TmdbRequestList{
  UP_COMING, NOW_PLAYING, POPULAR, TOP_RATES
}