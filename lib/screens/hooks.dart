import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class Hooks extends StatefulWidget {
  @override
  _Hooks createState() => _Hooks();
}

class _Hooks extends State<Hooks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Hooks Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: ${counter.value}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.value++;
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );

  }
}