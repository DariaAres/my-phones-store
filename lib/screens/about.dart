import 'package:flutter/material.dart';
import 'dart:async';
import 'package:my_phones_store/screens/product_list_screen.dart';

class About extends StatefulWidget {
  @override
  _About createState() => _About();
}

class _About extends State<About> {
  bool _isNotificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TimerDemo(),
    );
  }
}

class TimerDemo extends StatefulWidget {
  @override
  _TimerDemoState createState() => _TimerDemoState();
}

class _TimerDemoState extends State<TimerDemo> {
  int _counter = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Установка таймера на выполнение функции _incrementCounter каждые 2 секунды
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      _incrementCounter();
    });
  }

  @override
  void dispose() {
    // Остановка таймера при уничтожении состояния
    _timer.cancel();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      if(_counter < 10){
        _counter++;
        print("Counter: $_counter");
      }
      else {
        print("Counter достиг $_counterя");
      }
    });
  }

  String info() {
    return _counter < 10 ? '$_counter' : 'Counter достиг предела';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Сообщение будет обновлено каждые 2 секунды:',
            ),
            Text(
              info(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
