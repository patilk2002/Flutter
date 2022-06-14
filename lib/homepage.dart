import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    double d = 24;
    final String Name = 'kiran';
    bool c = true;
    num n = 35.5;
    var day = "Tuesday";
    const pi = 3.14;
    return Scaffold(
      appBar: AppBar(
        title: Text("Kiran Patil"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $Name we have $days and $d hours each day!"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
