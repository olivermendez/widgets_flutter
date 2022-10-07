import 'package:flutter/material.dart';

class AppBarTop extends StatelessWidget {
  const AppBarTop({super.key});

  static const String routeName = '/appbar-top';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const AppBarTop(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: false,
        actions: const [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
