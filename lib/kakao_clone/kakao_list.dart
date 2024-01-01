import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class KakaoChat extends StatelessWidget {
  String name;
  String message;
  int dateTime;
  String img;

  KakaoChat({
    super.key,
    required this.name,
    required this.message,
    required this.dateTime,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
          backgroundImage: AssetImage(img),
      ),
      // AspectRatio(
      //   aspectRatio: 1, // managing vertical/horizontal ratio
      //   child: SizedBox(
      //       height: 60,
      //       child: ClipOval(
      //         child: Image.asset(img),
      //       )),
      // ),
      title: Text(
        name,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      subtitle: Text(
        message,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 18, color: Colors.grey),
      ),
      trailing: Text(
        DateFormat.MMMEd()
            .format(DateTime.fromMillisecondsSinceEpoch(dateTime)),
        style: const TextStyle(color: Colors.grey, fontSize: 15),
        textAlign: TextAlign.end,
      ),
    );
  }
}
