import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_class/231229/mapper/mask_mapper.dart';

import 'data_source/mask_api.dart';
import 'model/store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MaskStoreScreen(),
    );
  }
}

class MaskStoreScreen extends StatefulWidget {
  const MaskStoreScreen({super.key});

  @override
  State<MaskStoreScreen> createState() => _MaskStoreScreenState();
}

class _MaskStoreScreenState extends State<MaskStoreScreen> {
  late List<Store> maskStores;
  bool isLoading = true;

  Future<List<Store>> getMaskStoreInfo() async {
    setState(() {
      isLoading = true;
    });
    final dto = await MaskApi().getMaskInfoResult();

    setState(() {
      isLoading = false;
    });

    return dto.stores
            ?.where((e) => e.remainStat != null)
            .map((e) => e.toStore())
            .toList() ??
        [];
  }

  @override
  void initState() {
    getMaskStoreInfo().then((maskStoreResult) {
      setState(() {
        maskStores = maskStoreResult;
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mask Store List'),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: getMaskStoreInfo,
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: isLoading
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Now Loading~~'),
                  CircularProgressIndicator(),
                ],
              ),
            )
          : ListView(
              children: maskStores.where((e) => e.stock != 'break').map((e) {
                return ListTile(
                  title: Text(e.name),
                  subtitle: Text(e.address),
                  trailing: _stockStatusWidget(e),
                );
              }).toList(),
            ),
    );
  }

  @override
  Widget _stockStatusWidget(Store store) {
    switch (store.stock) {
      case 'plenty':
        return const Column(
          children: [
            Text('재고상태'),
            Text(
              '아주 많음',
              style: TextStyle(color: Colors.green),
            ),
          ],
        );
      case 'some':
        return const Column(children: [
          Text('재고상태'),
          Text(
            '보통',
            style: TextStyle(color: Colors.yellow),
          )
        ]);
      case 'few':
        return const Column(
          children: [
            Text('재고상태'),
            Text(
              '부족',
              style: TextStyle(color: Colors.red),
            ),
          ],
        );
      case 'empty':
        return const Column(
          children: [
            Text('재고상태'),
            Text(
              '없음',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        );
      case 'break':
        return const Column(
          children: [
            Text('재고상태'),
            Text(
              '판매중지',
              style: TextStyle(color: Colors.brown),
            ),
          ],
        );
    }

    return Text('재고상태 : ${store.stock}');
  }
}
