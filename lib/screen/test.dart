import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Test', style: TextStyle(
          color: Colors.teal,
        ),),
        backgroundColor: Colors.white,
        leading: Icon(Icons.chrome_reader_mode, color: Colors.teal,),
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
                'Page Test',
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
