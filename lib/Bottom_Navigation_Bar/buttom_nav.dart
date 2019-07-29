import 'package:flutter/material.dart';
import 'package:info_me_mobile/Authorization/login.dart';
import 'package:info_me_mobile/screen/aboutus.dart';
import 'package:info_me_mobile/screen/contactus.dart';
import 'package:info_me_mobile/screen/helpandsupport.dart';
import 'package:info_me_mobile/screen/home.dart';
import 'package:info_me_mobile/screen/news.dart';
import 'package:info_me_mobile/screen/profile.dart';
import 'package:info_me_mobile/screen/setting.dart';
import 'package:info_me_mobile/screen/test.dart';

class ButtonNavigation extends StatefulWidget {
  @override
  ButtonNavigationBar createState() {
    // TODO: implement createState
    return ButtonNavigationBar();
  }
}

class ButtonNavigationBar extends State<ButtonNavigation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Theme(
        isMaterialAppTheme: true,
        data: ThemeData(
          brightness: Brightness.light
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                'Info-Me',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
            ),
            iconTheme: IconThemeData(
              color: Colors.teal,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.teal,
                ),
                onPressed: () {},
              ),
            ],
          ),
          drawer: _drawer(context),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "HOME",
              ),
              Tab(
                icon: Icon(Icons.mode_edit),
                text: "TEST",
              ),
              Tab(
                icon: Icon(Icons.web),
                text: "NEWS",
              ),
            ],
            unselectedLabelColor: Colors.black54,
            labelColor: Colors.teal,
            indicatorColor: Colors.teal,
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              TestScreen(),
              NewsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _drawer(context) {
  return Drawer(
    child: Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('images/myprofile.jpg'),
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromRGBO(26, 188, 156, 100),
          ),
          accountName: Text(
            'Oeng Mengthong',
            style: TextStyle(color: Colors.black),
          ),
          accountEmail: Text(
            'mengthongoenggl@gmail.com',
            style: TextStyle(color: Colors.black),
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Column(
                children: <Widget>[
                  ListTile(
                    dense: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'images/profile.png',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: null),
                  ),
                  Divider(
                    color: Colors.teal,
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsScreen(),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'images/setting.png',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: null),
                  ),
                  Divider(
                    color: Colors.teal,
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HelpAndSupportScreen(),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'images/help.png',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Help & Support',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: null),
                  ),
                  Divider(
                    color: Colors.teal,
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutUSScreen(),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'images/aboutus.png',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'About US',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: null),
                  ),
                  Divider(
                    color: Colors.teal,
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactUSScreen(),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'images/contactus.png',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Contact US',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: null),
                  ),
                  Divider(
                    color: Colors.teal,
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'images/logout.png',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Log Out',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: () {}),
                  ),
                  Divider(
                    color: Colors.teal,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}
