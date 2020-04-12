import 'package:flutter/material.dart';
import 'Calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plain Old Calculator",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Plain Old Calculator"),
        ),
        body: Center(
          child: Calculator(),
        )
        ),
      );
  }
}
