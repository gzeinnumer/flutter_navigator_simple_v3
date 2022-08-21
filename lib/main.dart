import 'package:flutter/material.dart';
import 'package:flutter_navigator_simple_v3/first_view.dart';
import 'package:flutter_navigator_simple_v3/second_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Name Route Demo",
      initialRoute: '/',
      routes: {
        '/' : (context) => const FirstView(),
        '/second' : (context) => const SecondView(),
      },
    );
  }
}
