import 'package:flutter_class/231227/data_source/pixabay_api.dart';
import 'package:flutter_class/231227/dto/PixabayDto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('API check', () {
    final pixabayApi = PixabyApi();
    expect(pixabayApi.getImageResult('apple'), 'matcher');
  });
}
