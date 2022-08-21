import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {

  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}