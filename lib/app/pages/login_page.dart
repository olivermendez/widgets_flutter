import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String routeName = '/login';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const LoginPage(),
    );
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: [
          const SizedBox(
            height: 80.0,
          ),
          Column(
            children: const [
              Text("Widget World"),
            ],
          ),
          const SizedBox(
            height: 120.0,
          ),
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'username',
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'password',
            ),
          ),
          OverflowBar(
            alignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  _usernameController.clear();
                  _passwordController.clear();
                  Navigator.pushReplacementNamed(context, '/world');
                },
                child: const Text("enter"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
