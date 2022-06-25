import 'package:flutter/material.dart';
import 'package:widgets_flutter/routes/app_routes.dart';
import 'app/widget_world.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: WidgetWordHome(),
    );
  }
}
