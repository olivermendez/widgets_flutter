import 'package:flutter/material.dart';

class HomeDrawerWidget extends StatefulWidget {
  HomeDrawerWidget({Key? key}) : super(key: key);

  @override
  State<HomeDrawerWidget> createState() => _HomeDrawerWidgetState();
}

class _HomeDrawerWidgetState extends State<HomeDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('data'),
          ),
          ListTile(
            title: const Text('Fish Watch App'),
            onTap: () {
              Navigator.pushNamed(context, '/fish-app');
            },
          ),
          ListTile(
            title: const Text('Rent Car'),
            onTap: () {
              Navigator.pushNamed(context, '/homev1');
            },
          ),
        ],
      ),
    );
  }
}
