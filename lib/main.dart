import 'package:flutter/material.dart';
import 'Authorization/login.dart';


void main() => runApp(MyApp()); //this is a root of widget tree that call class MyApp() for run

class MyApp extends StatelessWidget {
  //this class MyApp : in this class will call class ButtonNavigationBar()
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: LoginScreen(),
    );
  }

}