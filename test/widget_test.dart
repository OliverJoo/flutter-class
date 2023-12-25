// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_class/dust_info/air_result.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_class/231221/main.dart';

void main() {
  test('http 통신 테스트', () async{
    var response =await http.get(Uri.parse(
        'https://api.airvisual.com/v2/nearest_city?key=ea3a610a-1c88-4e9d-a50f-d1451f4840e4'));
    expect(response.statusCode, 200);

    AirResult result = AirResult.fromJson(jsonDecode(response.body));
    expect(result.status, 'success');
  });


}
