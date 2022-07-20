import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/models/components.models.dart';

// ignore: must_be_immutable
class WidgetsHome extends StatefulWidget {
  String title;
  List<ExamplesView>? examples;

  WidgetsHome({Key? key, required this.title, required this.examples})
      : super(key: key);

  @override
  State<WidgetsHome> createState() => _WidgetsHomeState();
}

class _WidgetsHomeState extends State<WidgetsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: widget.examples!.length,
          itemBuilder: (context, index) {
            final singleExample = widget.examples![index];
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, singleExample.route!);
              },
              title: Text(singleExample.concept!),
            );
          }),
    );
  }
}
