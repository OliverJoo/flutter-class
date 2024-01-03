import '../model/image_item.dart';
import 'image_item_repository.dart';
import 'image_item_repository_impl.dart';

class MockImageItemRepositoryImpl implements ImageItemRepository {
  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    await Future.delayed(const Duration(seconds: 1));

    if (query == 'apple') {
      return [
        ImageItem(
            imgUrl:
                "https://cdn.pixabay.com/photo/2017/09/26/13/21/apples-2788599_150.jpg",
            tags: 'apple'),
        ImageItem(
            imgUrl:
                "https://cdn.pixabay.com/photo/2017/09/26/13/39/apples-2788651_150.jpg",
            tags: 'apple'),
        ImageItem(
            imgUrl:
                "https://cdn.pixabay.com/photo/2015/02/13/00/43/apples-634572_150.jpg",
            tags: 'apple'),
      ];
    } else {
      return [
        ImageItem(
            imgUrl:
                "https://cdn.pixabay.com/photo/2015/03/14/19/45/suit-673697_150.jpg",
            tags: 'banana'),
        ImageItem(
            imgUrl:
                "https://cdn.pixabay.com/photo/2019/09/21/09/07/banana-4493420_150.jpg",
            tags: 'banana'),
      ];
    }
  }
}
