import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final ValueNotifier<int> _counter = ValueNotifier(0);

  void _incrementCounter() {
    _counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Value Notifier'),
      ),
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, value, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '$value',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: const Text('Refresh'),
                  )
                ],
              );
            }),
      ),
    );
  }
}
