import 'dart:convert';
import 'dart:io';

import 'package:flutter_class/movie_app/core/url_collection.dart';
import 'package:http/http.dart' as http;

import '../dto/tmdb_movie_dto.dart';

class TmdbMovieApi {
  // TMDB API
  Future<TmdbMovieDto> getTmdbMovieResults(String query) async {
    final response =
        await http.get(Uri.parse('${query}?api_key=${UrlCollection.api_key}'));

    return TmdbMovieDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  }
}

void main() async {
  final result = await TmdbMovieApi().getTmdbMovieResults(UrlCollection.upcomingUrl);
  print(result);
}
