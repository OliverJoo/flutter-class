
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubWidget extends StatelessWidget {
  const SubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var futureState = context.watch<String>();
    // var futureState = Provider.of<String>(context);
    var streamState = context.watch<int>();
    // var streamState = Provider.of<int>(context);

    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'future $futureState',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            Text(
              'stream $streamState',
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
