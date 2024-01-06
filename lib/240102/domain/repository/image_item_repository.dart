import 'package:flutter_class/240102/core/result.dart';
import 'package:flutter_class/240102/domain/model/image_item.dart';

abstract interface class ImageItemRepository {
  Future<Result<List<ImageItem>>> getImageItems(String queiry);
}
