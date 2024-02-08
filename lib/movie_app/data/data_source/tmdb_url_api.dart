import 'dart:convert';

import 'package:flutter_class/movie_app/core/api_request_collection.dart';
import 'package:flutter_class/movie_app/data/data_source/tmdb_interface.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../dto/tmdb_movie_dto.dart';

class TmdbUrlApi implements TmdbInterface {

  @override
  Future<TmdbMovieDto> getTmdbMovieResults(Enum query) async {
    await dotenv.load(fileName: "assets/.env");

    final response =
        await http.get(Uri.parse('${query}?api_key=${dotenv.get("tmdb_api")}'));

    return TmdbMovieDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  }
}

// void main() async {
//   final result =
//       await TmdbUrlApi().getTmdbMovieResults(TmdbUrlRequests.upcomingUrl.str);
//   print(result);
// }
