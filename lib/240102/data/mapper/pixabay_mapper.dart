
import 'package:flutter_class/240102/data/dto/PixabayDto.dart';
import 'package:flutter_class/240102/domain/model/image_item.dart';

extension DtoToModel on Hits {
  ImageItem toImageItem() {
    return ImageItem(
        imgUrl: previewURL ??
            'https://cdn.pixabay.com/photo/2017/09/26/13/21/apples-2788599_150.jpg',
        tags: tags ?? 'LOL');
  }
}
