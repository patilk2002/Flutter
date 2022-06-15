import 'package:flutter/material.dart';

import 'pages/homepage.dart';

void main() {
  runApp(Todo());
}

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      //`darkTheme: ThemeData(brightness: Brightness.dark),
    );
  }
}
