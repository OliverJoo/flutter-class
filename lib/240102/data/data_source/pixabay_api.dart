import 'dart:convert';

import 'package:flutter_class/240102/data/dto/PixabayDto.dart';
import 'package:http/http.dart' as http;

class PixabyApi {
  Future<PixabayDto> getImageResult(String query) async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo'));

    return PixabayDto.fromJson(jsonDecode(response.body));
  }
}
