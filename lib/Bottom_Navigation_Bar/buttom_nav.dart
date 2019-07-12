import 'package:flutter/material.dart';

class ButtonNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final bottomNavBar = BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          title: Text('Home'),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text('Test'),
          icon: Icon(Icons.border_color),
        ),
        BottomNavigationBarItem(
          title: Text('News'),
          icon: Icon(Icons.web),
        ),
      ],
      onTap: (tabIndex) {
        print('Click: on tab $tabIndex');
      },
    );

    return Scaffold(
      bottomNavigationBar: bottomNavBar,
    );
  }

}