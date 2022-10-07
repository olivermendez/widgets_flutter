import 'package:flutter/cupertino.dart';

class CupertinoExample extends StatelessWidget {
  const CupertinoExample({super.key});

  static const String routeName = '/cu-appbar-top';

  static Route<dynamic> route() {
    return CupertinoPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const CupertinoExample(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          //backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
          middle: const Text('CupertinoNavigationBar Sample'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('You have pressed the button times.'),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: CupertinoButton.filled(
                  onPressed: () {},
                  child: const Icon(CupertinoIcons.add),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
