import 'package:flutter/material.dart';
import 'package:info_me_mobile/Authorization/login.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.teal),
        title: Center(
          child: Text(
            'Settings',
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
