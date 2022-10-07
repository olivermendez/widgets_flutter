import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/pages/apps/dog_app/dog_home.dart';
import 'package:widgets_flutter/app/pages/apps/fish_app/fish_watch_home.dart';
import 'package:widgets_flutter/app/pages/login_page.dart';
import 'package:widgets_flutter/app/pages/home.dart';
import 'package:widgets_flutter/app/pages/widgets_tut/appbars/appbar_top.dart';
import 'package:widgets_flutter/app/pages/widgets_tut/cupertino/appbar_top.dart';
import 'package:widgets_flutter/app/pages/widgets_tut/home1.dart';
import 'package:widgets_flutter/app/widgets/body/widget_body_01.dart';

import '../app/pages/widgets_tut/appbars/appbar_button.dart';
import '../splash/splash_page.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
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
      case Homev1.routeName:
        return Homev1.route();
      case AppBarTop.routeName:
        return AppBarTop.route();

      case CupertinoExample.routeName:
        return CupertinoExample.route();

      //Appbar_buttom
      case AppBarButtom1.routeName:
        return AppBarButtom1.route();

      //Apps
      case FishWatchAppHome.routeName:
        return FishWatchAppHome.route();

      case DogAppHome.routeName:
        return DogAppHome.route();

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
