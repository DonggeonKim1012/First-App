import 'package:first_app/makeaccountpage.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget buildMainLogo(){
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 80.0,
      child: Image.asset('assets/다운로드.png'),
    );
  }
  
Widget buildnumber(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
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

Widget buildpassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       SizedBox(height: 10.0),
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

Widget buildLoginBtn() {
  return Container(
    width: double.infinity,
    child: RaisedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(HomePage.tag);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
      color:Colors.red[600],
      child: Text(
        'LOGIN',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans'
        ),
        )
    )
  );
}

Widget buildMakeAccountBtn() {
  return Container(
    width: double.infinity,
    child: RaisedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(MakeAccountPage.tag);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
      color:Colors.red[600],
      child: Text(
        'Create New Account',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans'
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
       SizedBox(height: 90.0),
       buildMainLogo(),
       buildnumber(),
       buildpassword(),
       SizedBox(height: 20.0),
       buildLoginBtn(),
       buildMakeAccountBtn()
     ],)
     )
    );
  }
}