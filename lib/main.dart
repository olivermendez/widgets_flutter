import 'package:flutter/material.dart';
import 'package:widgets_flutter/list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets'),
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
                onPressed: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
