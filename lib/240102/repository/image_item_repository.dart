import '../model/image_item.dart';

abstract interface class ImageItemRepository {
  Future<List<ImageItem>> getImageItems(String queiry);
}
