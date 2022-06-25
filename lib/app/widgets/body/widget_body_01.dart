import 'package:flutter/material.dart';

class WidgetBody01 extends StatelessWidget {
  const WidgetBody01({Key? key}) : super(key: key);

  static const String routeName = '/widget-body-01';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const WidgetBody01(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("widget-body-01")),
    );
  }
}
