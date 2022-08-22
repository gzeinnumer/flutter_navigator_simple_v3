# flutter_navigator_simple_v3

|<img src="/preview/preview1.png" width="300"/>|<img src="/preview/preview2.png" width="300"/>|
|--|--|

```dart
Navigator.pop(context);

Navigator.pushNamed(context, '/second');

return MaterialApp(
  title: "Name Route Demo",
  initialRoute: '/',
  routes: {
    '/' : (context) => const FirstView(),
    '/second' : (context) => const SecondView(),
  },
);
```

- main.dart
```dart
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
```

- first_view.dart
```dart
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
```

- second_view.dart
```dart
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
```

---

```
Copyright 2022 M. Fadli Zein
```
