import 'package:flutter/material.dart';

import '../constants/list.dart';

class WidgetWordHome extends StatefulWidget {
  const WidgetWordHome({Key? key}) : super(key: key);

  @override
  State<WidgetWordHome> createState() => _WidgetWordHomeState();
}

class _WidgetWordHomeState extends State<WidgetWordHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Widget World",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: listOfWidgets.length,
        itemBuilder: (BuildContext context, int index) {
          final name = listOfWidgets.toList(growable: false);
          return ListTile(
            title: Text(name[index]['name']!),
            subtitle: Text(name[index]['status']!),
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
