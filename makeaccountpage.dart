import 'package:flutter/material.dart';
import 'loginpage.dart';

class MakeAccountPage extends StatefulWidget {
  static String tag = 'makeaccount-page';
  @override
  _MakeAccountPageState createState() => _MakeAccountPageState();
}

class _MakeAccountPageState extends State<MakeAccountPage> {

Widget buildgetname(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       SizedBox(height: 20.0),
       Text("   이름"),
       SizedBox(height: 5.0),
       Container(
         height: 50.0,
         alignment: Alignment.centerLeft,
         decoration: BoxDecoration(
           color: Colors.red[200],
           borderRadius: BorderRadius.circular(10.0)
         ),
         child: TextField(
           decoration: InputDecoration(
             prefixIcon: Icon(
               Icons.person,
               color: Colors.white,
             ),
             hintText: "이름을 입력하세요",
             border: InputBorder.none,
           ),
          ),
       ),
     ],
  );
}

Widget buildgetnumber(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       SizedBox(height: 20.0),
       Text("   학번"),
       SizedBox(height: 5.0),
       Container(
         height: 50.0,
         alignment: Alignment.centerLeft,
         decoration: BoxDecoration(
           color: Colors.red[200],
           borderRadius: BorderRadius.circular(10.0)
         ),
         child: TextField(
           decoration: InputDecoration(
             prefixIcon: Icon(
               Icons.tag,
               color: Colors.white,
             ),
             hintText: "학번을 입력하세요",
             border: InputBorder.none,
           ),
          ),
       ),
     ],
  );
}

Widget buildgetmajor(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       SizedBox(height: 20.0),
       Text("   전공"),
       SizedBox(height: 5.0),
       Container(
         height: 50.0,
         alignment: Alignment.centerLeft,
         decoration: BoxDecoration(
           color: Colors.red[200],
           borderRadius: BorderRadius.circular(10.0)
         ),
         child: TextField(
           decoration: InputDecoration(
             prefixIcon: Icon(
               Icons.book,
               color: Colors.white,
             ),
             hintText: "학과를 입력하세요",
             border: InputBorder.none,
           ),
          ),
       ),
     ],
  );
}

Widget buildgetpassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       SizedBox(height: 20.0),
       Text("   비밀번호"),
       SizedBox(height: 5.0),
       Container(
         height: 50.0,
         alignment: Alignment.centerLeft,
         decoration: BoxDecoration(
           color: Colors.red[200],
           borderRadius: BorderRadius.circular(10.0)
         ),
         child: TextField(
           decoration: InputDecoration(
             prefixIcon: Icon(
               Icons.lock,
               color: Colors.white,
             ),
             hintText: "비밀번호를 입력하세요",
             border: InputBorder.none,
           ),
          ),
       ),
     ],
  );
}

Widget buildMakeAccountBtn() {
  return Container(
    width: double.infinity,
    child: RaisedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(LoginPage.tag);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
      color:Colors.red[600],
      child: Text(
        '회원가입',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
        )
    )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       padding: EdgeInsets.symmetric(
         horizontal: 40.0,
       ),
       child: Column(children: [
       SizedBox(height: 50.0),
       buildgetname(),
       buildgetnumber(),
       buildgetmajor(),
       buildgetpassword(),
       SizedBox(height: 30.0),
       buildMakeAccountBtn()
     ],)
     )
    );
  }
}