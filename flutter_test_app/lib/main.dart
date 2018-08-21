import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demon',
      theme: new ThemeData(
          primarySwatch: Colors.blue, backgroundColor: Colors.green),
      home: new MyHomePage(title: 'Flutter Demon Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color color = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      color = _getRandomColor();
    });
  }

  Color _getRandomColor() {
    final int brightness = 180;
    Random random = new Random();
    int red = random.nextInt(255);
    if (red < brightness) {
      red += 30;
    }
    int green = random.nextInt(255);
    if (green < brightness) {
      green += 30;
    }
    int blue = random.nextInt(255);
    if (blue < brightness) {
      blue += 30;
    }

    Color color = new Color.fromARGB(255, red, green, blue);
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: color,
      body: new GestureDetector(
        behavior: HitTestBehavior.opaque,
          onTap: _changeBackgroundColor,
          child: new Container(
            width: double.infinity,
            height: double.infinity,
            child: new Center(
                child: new Text(
              "I want a job at Solid Software",
              style: new TextStyle(fontSize: 26.0, fontStyle: FontStyle.italic),
            )),
          )),
    );
  }
}
