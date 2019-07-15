import 'package:flutter/material.dart';
import 'package:info_me_mobile/screen/home.dart';
import 'package:info_me_mobile/screen/news.dart';
import 'package:info_me_mobile/screen/profile.dart';
import 'package:info_me_mobile/screen/test.dart';

class ButtonNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
        length: 4,
        child: Theme(
          data: ThemeData(brightness: Brightness.light),
          child: Scaffold(
            bottomNavigationBar: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.question_answer), text: "Test"),
                  Tab(icon: Icon(Icons.chrome_reader_mode), text: "News"),
                  Tab(icon: Icon(Icons.person_outline), text: "Profile"),
                ],
                unselectedLabelColor: Colors.black54,
                labelColor: Colors.teal,
                indicatorColor: Colors.teal
            ),

            body: TabBarView(
              children: [
                HomeScreen(),
                TestScreen(),
                NewsScreen(),
                ProfileScreen(),
              ],
            ),
          ),
        ));
  }
}