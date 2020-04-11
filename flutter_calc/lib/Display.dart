import 'package:flutter/material.dart';

class DisplayStatefulWidget extends StatefulWidget {
  @override
  createState() => _Display();
}

class _Display extends State<DisplayStatefulWidget>{
  int output = 0;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        enabled: false,
      ),
    );
  }
}