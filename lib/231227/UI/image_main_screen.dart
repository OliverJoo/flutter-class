import 'package:flutter/material.dart';
import 'package:flutter_class/231227/UI/widget/image_detail.dart';

import '../model/image_item.dart';
import '../repository/image_item_repository.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final searchTextController = TextEditingController();
  final repository = ImageItemRepository();

  List<ImageItem> imageItems = [];
  bool isLoading = false;

  Future<void> searchImage(String query) async {
    setState(() {
      isLoading = true;
    });
    imageItems = await repository.getImageItems(query);

    setState(() {
      isLoading = false;
    }); // for app UI update
  }

  @override
  void dispose() {
    super.dispose();
    searchTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: searchTextController,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color(0xFF4FB6B2), // border color
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color(0xFF4FB6B2), // border color
                    ),
                  ),
                  hintText: 'Search',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    color: Color(0xFF4FB6B2),
                    onPressed: () {
                      // print(searchTextController.text);
                      searchImage(searchTextController.text);
                    },
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : GridView.builder(
                      itemCount: imageItems.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 32,
                        mainAxisSpacing: 32,
                      ),
                      itemBuilder: (context, index) {
                        final imageItem = imageItems[index];

                        return GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Hero(
                              tag: imageItem.imgUrl,
                              child: Image.network(imageItem.imgUrl,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          onTap: () {
                            print('imageItem.imgUrl ${imageItem.imgUrl}');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ImageDetail(imageItem: imageItem)),
                            );
                          },
                        );
                      }),
            ),
          ],
        ),
      ),
    ));
  }
}
