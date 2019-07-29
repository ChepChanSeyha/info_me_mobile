import 'package:flutter/material.dart';
import 'package:info_me_mobile/Authorization/login.dart';

class AboutUSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.teal),
        title: Center(
          child: Text(
            'About US',
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
