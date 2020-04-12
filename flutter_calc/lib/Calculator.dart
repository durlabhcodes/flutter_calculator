import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output, operand;
  int num1 = 0, num2 = 0;

  initState() {
    super.initState();
    _output = "0";
  }

  buttonPressHandler(String value) {
    if(value == "X" || value == "/" || value == "+" || value == "-") {
      num1 = int.parse(_output);
      operand = value;
      _output = "0";
    } else if(value == "=") {
      num2 = int.parse(_output);
      if(operand == "X") {
        _output = (num1 * num2).toString();
      }
      if(operand == "/") {
        _output = (num1 / num2).toString();
      }
      if(operand == "+") {
        _output = (num1 + num2).toString();
      }
      if(operand == "-") {
        _output = (num1 - num2).toString();
      }
    } else if(value == "Clear") {
      num1 = 0;
      num2 = 0;
      _output = "0";
    } else {
      _output = int.parse(_output+value).toString();
    }

    setState(() {
      _output = _output;
    });
  }

  Widget calcButton(String value) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(24.0),
        child: Text(value),
        onPressed: () {
          buttonPressHandler(value);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(
                vertical :24.0,
                horizontal: 12.0),
            child: Text(_output,
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            children: <Widget>[
              calcButton("1"),
              calcButton("2"),
              calcButton("3"),
              calcButton("/"),
            ],
          ),
          Row(
            children: <Widget>[
              calcButton("4"),
              calcButton("5"),
              calcButton("6"),
              calcButton("X"),
            ],
          ),
          Row(
            children: <Widget>[
              calcButton("7"),
              calcButton("8"),
              calcButton("9"),
              calcButton("-"),
            ],
          ),
          Row(
            children: <Widget>[
              calcButton("."),
              calcButton("0"),
              calcButton("00"),
              calcButton("+"),
            ],
          ),
          Row(
            children: <Widget>[
              calcButton("Clear"),
              calcButton("="),
            ],
          )
        ],
      ),
    );
  }
}
