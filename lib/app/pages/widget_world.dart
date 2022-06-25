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
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listOfWidgets.length,
        itemBuilder: (BuildContext context, int index) {
          final name = listOfWidgets.toList(growable: false);

          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, name[index]['route']!);
            },
            title: Text(name[index]['name']!),
            subtitle: Text(
              name[index]['status']!,
            ),
            trailing: TextButton(
              child: const Text("go"),
              onPressed: () {
                Navigator.pushNamed(context, name[index]['route']!);
              },
            ),
          );
        },
      ),
    );
  }
}
