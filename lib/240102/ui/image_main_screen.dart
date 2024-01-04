import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_class/240102/ui/main_event.dart';
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

  late StreamSubscription<MainEvent> streamSubscription;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      streamSubscription =
          context.read<MainViewModel>().eventStream.listen((event) {
        switch (event) {
          case ShowSnackBar():
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(event.msg)));
          case ShowDialog():
            exitConfirm(event);
        }
      });
    });
  }

  Future<bool> exitConfirm(event) async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Text(event.e.toString()),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    return Scaffold(
      // If resizeToAvoidBottomInset = true, widget shows above keyboard. Thus, false
      // resizeToAvoidBottomInset: false,
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
                child: state.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : GridView.builder(
                        itemCount: state.imageItems.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 32,
                          mainAxisSpacing: 32,
                        ),
                        itemBuilder: (context, index) {
                          final imageItem = state.imageItems[index];

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
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
