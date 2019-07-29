import 'package:flutter/material.dart';
import 'package:info_me_mobile/Authorization/login.dart';

class HelpAndSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.teal),
        title: Center(
          child: Text(
            'Help & Support',
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
