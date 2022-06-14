import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(Todo());
}

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    double d = 24;
    String Name = "kiran";
    bool c = true;
    num n = 35.5;
    var day = "Tuesday";
    const pi = 3.14;
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome $Name we have $days and $d hours each day!"),
          ),
        ),
      ),
    );
  }
}
