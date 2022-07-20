import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/models/components.models.dart';
import 'package:widgets_flutter/app/pages/widgets_home.dart';
import 'package:widgets_flutter/app/widgets/card_widget.dart';

import '../widgets/appbar/home_appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const String routeName = '/world';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const Home(),
    );
  }

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(),
      ),
      body: ListView.builder(
        itemCount: ComponentsModels.componentsData.length,
        itemBuilder: (context, int index) {
          final components = ComponentsModels.componentsData[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => WidgetsHome(
                          title: components.name,
                          examples: components.examples)));
            },
            child: CardWidget(
              name: components.name,
              image: components.image,
              description: components.description,
            ),
          );
        },
      ),
    );
  }
}
