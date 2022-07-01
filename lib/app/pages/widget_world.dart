import 'package:flutter/material.dart';
import '../../constants/list.dart';

class WidgetWordHome extends StatefulWidget {
  const WidgetWordHome({Key? key}) : super(key: key);

  static const String routeName = '/world';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const WidgetWordHome(),
    );
  }

  @override
  State<WidgetWordHome> createState() => _WidgetWordHomeState();
}

class _WidgetWordHomeState extends State<WidgetWordHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: GridView.builder(
        itemCount: listOfWidgets.length,
        itemBuilder: (context, int index) {
          final name = listOfWidgets.toList(growable: false);
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, name[index]['route']!);
            },
            child: Card(
              color: Colors.white,
              elevation: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name[index]['name']!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      //color: Colors.white,
                    ),
                  ),
                  Text(
                    name[index]['status']!,
                  ),
                ],
              ),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
