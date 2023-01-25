import 'package:flutter/material.dart';

class DisplayStatefulWidget extends StatefulWidget {
  @override
  createState() => _Display();
}

class _Display extends State<DisplayStatefulWidget>{
  var outputController;
  int? output;
  @override
  void initState() {
    super.initState();
    outputController = TextEditingController(text: "0");
    output = 0;
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: outputController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        enabled: false,
      ),
    );
  }
}