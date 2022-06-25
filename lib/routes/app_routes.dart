import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/widgets/body/widget_body_01.dart';

import '../splash/splash_page.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route ${settings.name}');

    switch (settings.name) {
      case SplashPage.routeName:
        return SplashPage.route();
      case WidgetBody01.routeName:
        return WidgetBody01.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Error Page"),
        ),
      ),
    );
  }
}
