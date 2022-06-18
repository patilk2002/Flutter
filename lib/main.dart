import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/utils/routes.dart';
import 'package:todo/widgets/themes.dart';
import 'widgets/themes.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';

void main() {
  runApp(Todo());
}

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      //`darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => LoginPage()
      },
    );
  }
}
