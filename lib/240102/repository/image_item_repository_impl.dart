import 'package:flutter_class/240102/data_source/pixabay_api.dart';
import 'package:flutter_class/240102/dto/PixabayDto.dart';
import 'package:flutter_class/240102/mapper/pixabay_mapper.dart';

import '../model/image_item.dart';
import 'image_item_repository.dart';

class ImageItemRepositoryImpl implements ImageItemRepository {

  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    final PixabayDto dto = await PixabyApi().getImageResult(query);

    if (dto.hits != null) {
      return dto.hits!.map((e) => e.toImageItem()).toList();
    }
    return [];
  }
}
