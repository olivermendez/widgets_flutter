import 'package:flutter/material.dart';

class DogAppHome extends StatefulWidget {
  DogAppHome({Key? key}) : super(key: key);

  static const String routeName = '/dog-app';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => DogAppHome(),
    );
  }

  @override
  State<DogAppHome> createState() => _DogAppHomeState();
}

class _DogAppHomeState extends State<DogAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DOG APP'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
    );
  }
}
