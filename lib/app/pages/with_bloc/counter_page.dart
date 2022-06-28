import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/pages/with_bloc/Counter_bloc.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key? key}) : super(key: key);

  static const String routeName = '/counter-page';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CounterPage(),
    );
  }

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter Page with Bloc",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ChildPageCounterPage(),
    );
  }
}

class ChildPageCounterPage extends StatefulWidget {
  const ChildPageCounterPage({Key? key}) : super(key: key);

  @override
  State<ChildPageCounterPage> createState() => _ChildPageCounterPageState();
}

class _ChildPageCounterPageState extends State<ChildPageCounterPage> {
  int counter = 0;
  final bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "$counter",
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        const Divider(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              heroTag: "btn1",
              onPressed: () {
                setState(() {
                  counter++;
                });
                //bloc.add(CounterEvent.increment);
              },
              child: const Icon(Icons.plus_one),
            ),
            FloatingActionButton(
              heroTag: "btn2",
              onPressed: () {
                setState(() {
                  counter--;
                });
                //bloc.add(CounterEvent.decrement);
              },
              child: const Icon(Icons.exposure_minus_1),
            ),
          ],
        ),
      ],
    );
  }
}
