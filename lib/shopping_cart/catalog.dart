import 'package:flutter/material.dart';

import 'item.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  List<Item> _itemList = itemList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.archive)),
        ],
      ),
      body: ListView(
        children: _itemList.map((item) => _buildItem(item)).toList(),
      ),
    );
  }

  Widget _buildItem(Item item) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          item.title,
          style: TextStyle(fontSize: 31.0),
        ),
        subtitle: Text('${item.price}'),
        trailing: IconButton(
          icon: Icon(Icons.check),
          onPressed: () {},
        ),
      ),
    );
  }
}
