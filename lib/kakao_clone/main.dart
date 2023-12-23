import 'package:flutter/material.dart';

import 'kakao_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const KakaoScreen(),
    );
  }
}

class KakaoScreen extends StatefulWidget {
  const KakaoScreen({super.key});

  // final user1 = KakaoChat(name: '라이언1', message: '뭐하니~?', dateTime: 44231, img: 'assets/ryan.jpg');

  @override
  State<KakaoScreen> createState() => _KakaoScreenState();
}

class _KakaoScreenState extends State<KakaoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'Chatting',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search, color: Colors.white),
              color: Colors.white,
            ),
            IconButton(
              onPressed: null,
              icon:
                  Icon(Icons.playlist_add_circle_rounded, color: Colors.white),
              color: Colors.white,
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.settings, color: Colors.white),
              color: Colors.white,
            )
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  margin: const EdgeInsetsDirectional.all(16),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/porsche.jpeg'),
                          fit: BoxFit.fill),
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(30)),
                ),
                KakaoChat(
                    name: 'Ryan1',
                    message: '밥 먹자~~~',
                    dateTime: 1233,
                    img: 'assets/ryan.jpg'),
                KakaoChat(
                    name: 'Ryan2',
                    message: '대답 좀 해주라~~ 밥 먹자~~~',
                    dateTime: 12340,
                    img: 'assets/1.jpeg'),
                KakaoChat(
                    name: 'Ryan_3',
                    message: '과제 다 했냐~? 공부할거 겁나 많네~~~',
                    dateTime: 32113,
                    img: 'assets/2.png'),
                KakaoChat(
                    name: 'Ryan_4',
                    message: '추워~~~',
                    dateTime: 32113,
                    img: 'assets/3.png'),
                KakaoChat(
                    name: '라이언',
                    message: '맛저녁!',
                    dateTime: 32113,
                    img: 'assets/4.png'),
                KakaoChat(
                    name: '테스터1',
                    message: '앱출시 하기에는 아직 많은 연습이 필요하겠네요~ 화이팅',
                    dateTime: 32113,
                    img: 'assets/5.jpeg'),
                KakaoChat(
                    name: 'Sadang APT',
                    message: '주민 여러분~ 겨울철 보일러 난방 조심~~~',
                    dateTime: 32113,
                    img: 'assets/6.jpeg'),
                KakaoChat(
                    name: 'Who!',
                    message: '과제 다 했냐~? 공부할거 겁나 많네~~~',
                    dateTime: 32113,
                    img: 'assets/ryan.jpg'),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.white),
                label: 'Contact Info'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble, color: Colors.white),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat, color: Colors.white),
                label: 'Open Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
                label: 'Shopping'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz, color: Colors.white),
                label: 'More'),
          ],
        ));
  }
}
