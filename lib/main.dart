import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/pages/login_page.dart';
import 'package:widgets_flutter/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: LoginPage(),
    );
  }
}
