import 'dart:convert';

import 'package:flutter_class/movie_app/core/api_request_collection.dart';
import 'package:flutter_class/movie_app/data/data_source/tmdb_interface.dart';
import 'package:http/http.dart' as http;

import '../dto/tmdb_movie_dto.dart';

class TmdbUrlApi implements TmdbInterface {
  @override
  Future<TmdbMovieDto> getTmdbMovieResults(Enum query) async {
    final response =
        await http.get(Uri.parse('${query}?api_key=${TmdbUrlRequests.api_key}'));

    return TmdbMovieDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  }
}

// void main() async {
//   final result =
//       await TmdbUrlApi().getTmdbMovieResults(TmdbUrlRequests.upcomingUrl);
//   print(result);
// }
