import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      leading: IconButton(
        onPressed: () {
          // ignore: avoid_print
          print("menu button");
        },
        icon: const Icon(
          Icons.menu,
          semanticLabel: 'menu',
        ),
      ),
      elevation: 0,
      title: const Text(
        "Widget World",
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            semanticLabel: 'search',
          ),
          onPressed: () {
            // ignore: avoid_print
            print('Search button');
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.tune,
            semanticLabel: 'filter',
          ),
          onPressed: () {
            // ignore: avoid_print
            print('Filter button');
          },
        ),
      ],
    );
  }
}
