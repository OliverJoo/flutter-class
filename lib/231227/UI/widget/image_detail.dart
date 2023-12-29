import 'package:flutter/material.dart';
import 'package:flutter_class/231227/model/image_item.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class ImageDetail extends StatelessWidget {
  final ImageItem imageItem;

  const ImageDetail({super.key, required this.imageItem});

  @override
  Widget build(BuildContext context) {
    timeDilation = 1.5;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              child: Hero(
                tag: imageItem.imgUrl,
                child: Image.network(imageItem.imgUrl, fit: BoxFit.contain),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
