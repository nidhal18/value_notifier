import 'package:flutter/material.dart';
import 'package:value_notifier/valuenotifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Value Notifier',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}


