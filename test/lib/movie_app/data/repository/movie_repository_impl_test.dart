import 'package:flutter_class/movie_app/core/api_request_collection.dart';
import 'package:flutter_class/movie_app/core/movie_result.dart';
import 'package:flutter_class/movie_app/data/data_source/tmdb_package_api.dart';
import 'package:flutter_class/movie_app/data/repository/movie_repository_impl.dart';
import 'package:flutter_class/movie_app/domain/model/movie_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('UP Coming Result Test', () async {
    final movieRepository = MovieRepositoryImpl(tmdbInterface: TmdbPackageApi());

    final result = await movieRepository.getMovieInfoList(TmdbPackageRequests.UP_COMING);
    switch(result){
      case Success<List<MovieInfo>>():
        expect(result.data[0].title, '웡카');
        expect(result.data[0].posterPath, '/g5mGMbiZLvgEf628D60GQrPHFJC.jpg');

      case Error<List<MovieInfo>>():
        print(result.e.toString());
    }
  });
}
