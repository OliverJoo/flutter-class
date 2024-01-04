import 'package:flutter_class/240102/data_source/pixabay_api.dart';
import 'package:flutter_class/240102/dto/PixabayDto.dart';
import 'package:flutter_class/240102/mapper/pixabay_mapper.dart';

import '../core/result.dart';
import '../model/image_item.dart';
import 'image_item_repository.dart';

class ImageItemRepositoryImpl implements ImageItemRepository {
  @override
  Future<Result<List<ImageItem>>> getImageItems(String query) async {
    try {
      final PixabayDto dto = await PixabyApi().getImageResult(query);

      if (dto.hits != null) {
        return Result.success(dto.hits!.map((e) => e.toImageItem()).toList());
      } else {
        return const Result.success([]);
      }
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}
