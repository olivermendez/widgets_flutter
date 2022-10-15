import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/style.dart';

class SmartHomeApp extends StatefulWidget {
  const SmartHomeApp({super.key});

  static const String routeName = '/smart-app';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const SmartHomeApp(),
    );
  }

  @override
  State<SmartHomeApp> createState() => _SmartHomeAppState();
}

class _SmartHomeAppState extends State<SmartHomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SafeArea(child: AppBarWidgetSmartHome()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CardWidgetSmartHome(),
            TypeOfRoomsWidgetSmartHome(),
            TypeOfDevicesWidgetSmartHome()
          ],
        ),
      ),
      bottomNavigationBar: BottomBarWidgetSmartHome(),
    );
  }
}

/// Widgets
class AppBarWidgetSmartHome extends StatelessWidget {
  const AppBarWidgetSmartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 16.0,
          ),
          child: Row(
            children: [
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  border: Border.all(),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.app_blocking_outlined),
              ),
              Expanded(
                  child: Column(
                children: const [
                  Text(
                    "Hello Oliver",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text("Monday, 19 August 2022")
                ],
              )),
              CircleAvatar(
                radius: 27,
              )
            ],
          ),
        )
      ],
    );
  }
}

class BottomBarWidgetSmartHome extends StatelessWidget {
  const BottomBarWidgetSmartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: SizedBox(
        height: 72,
        //color: Colors.red,
        child: Row(
          children: [
            Expanded(
                child: IconButton(
              onPressed: () {},
              iconSize: 32,
              icon: const Icon(
                Icons.home_outlined,
              ),
            )),
            Expanded(
                child: IconButton(
              iconSize: 32,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
              ),
            )),
            Expanded(
                child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
              ),
            )),
            Expanded(
                child: IconButton(
              iconSize: 32,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
              ),
            )),
            Expanded(
                child: IconButton(
              iconSize: 32,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class CardWidgetSmartHome extends StatelessWidget {
  const CardWidgetSmartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        //color: Colors.red,
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      height: 160,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "20 C",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("It's pretty cloudy in outside")
                ],
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.cloud_outlined),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "18 km/h",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Wind velocity",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "48%",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Home humidity",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "1014 mbar",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Pressure",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TypeOfRoomsWidgetSmartHome extends StatelessWidget {
  const TypeOfRoomsWidgetSmartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 0),
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Rooms",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Se all",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 54,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(24)),
                  child: const Center(
                    child: Text("Living room"),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class TypeOfDevicesWidgetSmartHome extends StatelessWidget {
  const TypeOfDevicesWidgetSmartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 0),
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Devices",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Se all",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            //height: 360,
            child: GridView.builder(
              //scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                //mainAxisExtent: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.blue[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.access_alarm),
                          Icon(Icons.wifi)
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      const Text(
                        "Smart Lighting",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "2 Lamps",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text("On"),
                          Icon(Icons.wifi_1_bar_outlined),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
