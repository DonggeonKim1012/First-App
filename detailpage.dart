import 'package:flutter/material.dart';
import 'utility.dart';

class DetailPage extends StatelessWidget {
  final Student student;

  DetailPage({Key key, @required this.student}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(student.name),
        Text(student.number.toString()),
        Text(student.major),
        Text(student.password.toString()),
      ],)
    );
  }
}