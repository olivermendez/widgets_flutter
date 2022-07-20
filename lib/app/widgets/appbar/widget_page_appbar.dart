import 'package:flutter/material.dart';

class WidgetPageAppBar extends StatefulWidget {
  String title;
  WidgetPageAppBar({Key? key, required this.title}) : super(key: key);

  @override
  State<WidgetPageAppBar> createState() => _WidgetPageAppBarState();
}

class _WidgetPageAppBarState extends State<WidgetPageAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    );
  }
}
