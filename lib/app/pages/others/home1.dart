import 'package:flutter/material.dart';

class Homev1 extends StatelessWidget {
  const Homev1({super.key});

  static const String routeName = '/homev1';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const Homev1(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: const Center(
        child: Text("Hello"),
      ),
      appBar: AppBar(
        actions: const [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          ),
        ],
        shape: const Border(
          bottom: BorderSide(
            color: Colors.purple,
            width: 4,
          ),
        ),
        elevation: 4,
        //bottom: extraSearchWidget(),
        //automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Colors.purple,
        title: const Text(
          "Hi, Oliver",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  PreferredSize extraSearchWidget() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: Container(
          color: Colors.transparent,
          child: const TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintStyle: TextStyle(color: Colors.black),
              focusColor: Colors.white,
              isDense: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              hintText: 'Enter a search term',
            ),
          ),
        ),
      ),
    );
  }
}
