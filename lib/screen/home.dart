import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.teal,
          ),
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.home,
          color: Colors.teal,
        ),
        actions: <Widget>[
          IconButton(
            tooltip: 'Search',
            icon: const Icon(
              Icons.search,
              color: Colors.teal,
            ),
            onPressed: () async {
            },

          )
        ],
      ),
      body: _body(),
    );
  }
}

Widget _body() {
  return Container(
      decoration: BoxDecoration(),
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Page Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ));
}
