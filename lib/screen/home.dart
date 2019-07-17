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
            onPressed: () async {},
          )
        ],
      ),
      body: _body(),
    );
  }
}

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

Widget _body() {
  return Container(
      decoration: BoxDecoration(
        color: Colors.greenAccent,
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: <Widget>[
                Text('List View Item:'),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 30,
                    color: Colors.amber,
                    child: const Center(
                      child: Text('Number 1'),
                    )),
                Container(
                    height: 30,
                    color: Colors.deepOrange,
                    child: const Center(
                      child: Text('Number 2'),
                    )),
                Container(
                    height: 30,
                    color: Colors.deepPurple,
                    child: const Center(
                      child: Text('Number 3'),
                    )),
                SizedBox(
                  height: 10,
                ),
                const Text('I\'m dedicating every day to you'),
                const Text('Domestic life was never quite my style'),
                const Text('When you smile, you knock me out, I fall apart'),
                const Text('And I thought I was so smart'),
              ],
            )
          ]));
}
