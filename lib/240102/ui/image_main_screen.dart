import 'package:flutter/material.dart';
import 'package:flutter_class/240102/ui/main_view_model.dart';
import 'package:flutter_class/240102/ui/widget/image_detail.dart';
import 'package:provider/provider.dart';

import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final searchTextController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

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
                    icon: const Icon(Icons.search),
                    color: const Color(0xFF4FB6B2),
                    onPressed: () {
                      // print(searchTextController.text);
                      viewModel.searchImage(searchTextController.text);
                      SystemChannels.textInput.invokeMethod('TextInput.hide');
                    },
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: viewModel.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : GridView.builder(
                      itemCount: viewModel.imageItems.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 32,
                        mainAxisSpacing: 32,
                      ),
                      itemBuilder: (context, index) {
                        final imageItem = viewModel.imageItems[index];

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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ImageDetail(
                                        imgUrl: imageItem.imgUrl,
                                      )),
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
