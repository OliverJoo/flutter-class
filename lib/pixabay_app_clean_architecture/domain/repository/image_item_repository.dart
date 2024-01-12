import 'package:flutter_class/pixabay_app_clean_architecture/core/result.dart';
import 'package:flutter_class/pixabay_app_clean_architecture/domain/model/image_item.dart';

abstract interface class ImageItemRepository {
  Future<Result<List<ImageItem>>> getImageItems(String queiry);
}
