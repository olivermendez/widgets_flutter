import 'package:flutter/material.dart';

class EcommerceApp extends StatefulWidget {
  const EcommerceApp({super.key});

  static const String routeName = '/ecommerce-app';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const EcommerceApp(),
    );
  }

  @override
  State<EcommerceApp> createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        child: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          onPressed: () {},
          //tooltip: "Hola",
          label: const Text("Sign Up with Email"),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.55, 0.97],
              ),
            ),
            decoration: const BoxDecoration(
              //color: const Color(0xff7c94b6),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.pexels.com/photos/1020370/pexels-photo-1020370.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: 460,
            child: Stack(
              children: const [
                Positioned.fill(
                  top: 40,
                  left: 100,
                  child: Text(
                    "MNMLMANDI",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            //color: Colors.red,
          ),
          const Divider(
            height: 20,
            color: Colors.transparent,
          ),
          const Center(
            child: Text(
              "Your Appearance",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          const Center(
            child: Text(
              "Shows Your Quality",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          const Divider(
            height: 30,
            color: Colors.transparent,
          ),
          const Center(
            child: Text(
              "Change The Quality Of Your",
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          const Center(
            child: Text(
              "Appearance with MNMLMANDI Now",
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
