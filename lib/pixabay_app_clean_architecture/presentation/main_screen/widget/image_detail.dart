import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class ImageDetail extends StatelessWidget {
  final String imgUrl;

  const ImageDetail({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    timeDilation = 1.5;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              child: Hero(
                tag: imgUrl,
                child: Image.network(imgUrl, fit: BoxFit.contain),
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
