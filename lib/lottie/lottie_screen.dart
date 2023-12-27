import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieScreen extends StatelessWidget {
  const LottieScreen({super.key});

  Widget _buildTextColumn() {
    return const FractionallySizedBox(
      widthFactor: 0.8,
      child: FittedBox(
        child: Column(
          children: [
            Text('Happy', style: TextStyle(color: Colors.white)),
            Text('Death-day', style: TextStyle(color: Colors.white)),
            Text('To You', style: TextStyle(color: Colors.white))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double imageRatio = MediaQuery.of(context).size.shortestSide /
        (MediaQuery.of(context).size.longestSide -
            MediaQuery.of(context).padding.top);
    final double imageWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: imageRatio,
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child: Image.asset(
                    'assets/images/dark_forest.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: imageRatio,
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child: Lottie.asset(
                    'assets/animation/snow.json',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(),
                  _buildTextColumn(),
                  Lottie.asset(
                    'assets/animation/grim_reaper.json',
                    width: imageWidth / 1.2,
                    fit: BoxFit.contain,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
