import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardWidget extends StatefulWidget {
  String name;
  String image;
  String description;
  CardWidget(
      {Key? key,
      required this.name,
      required this.image,
      required this.description})
      : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Color.fromARGB(221, 125, 81, 182),
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.name,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 16),
            child: Text(
              widget.description,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Image.asset(widget.image),
        ],
      ),
    );
  }
}
