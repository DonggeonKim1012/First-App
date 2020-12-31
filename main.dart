import 'package:first_app/makeaccountpage.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'homepage.dart';
import 'makeaccountpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder> {
    MakeAccountPage.tag: (context) => MakeAccountPage(),
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  LoginPage(),
      routes: routes,
    );
  }
}