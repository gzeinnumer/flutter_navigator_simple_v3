import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Second Screen'),
        ),
      ),
    );
  }
}