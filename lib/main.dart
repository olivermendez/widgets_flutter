import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/pages/login_page.dart';
import 'package:widgets_flutter/routes/app_routes.dart';
import 'app/pages/widget_world.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: LoginPage(),
    );
  }
}
