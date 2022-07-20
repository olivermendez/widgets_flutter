import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/pages/login_page.dart';
import 'package:widgets_flutter/app/pages/home.dart';
import 'package:widgets_flutter/app/widgets/body/widget_body_01.dart';

import '../app/pages/appbars_bottom/abb1.dart';
import '../splash/splash_page.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route ${settings.name}');

    switch (settings.name) {
      case SplashPage.routeName:
        return SplashPage.route();
      case WidgetBody01.routeName:
        return WidgetBody01.route();
      case LoginPage.routeName:
        return LoginPage.route();
      case Home.routeName:
        return Home.route();

      //Appbar_buttom
      case AppBarButtom1.routeName:
        return AppBarButtom1.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => const ErrorPageNotFound());
  }
}

class ErrorPageNotFound extends StatelessWidget {
  const ErrorPageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Page not found",
        ),
      ),
      body: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Center(
          child: Text(
            "Page no found",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
