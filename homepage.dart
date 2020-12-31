import 'package:flutter/material.dart';
import 'utility.dart';
import 'detailpage.dart';

class HomePage extends StatelessWidget {
  static String tag ='home-page';
  final students = List<Student>.generate(50, (index) => Student('Name',123,'Major',123));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈페이지'),
        backgroundColor: Colors.red[600],
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(students[index].name),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(student: students[index])
              )
            ); 
          }
          );
        },
      ),
    );
  }
}