import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('News', style: TextStyle(
          color: Colors.teal,
        ),),
        backgroundColor: Colors.white,
        leading: Icon(Icons.question_answer, color: Colors.teal,),
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
                'Page News',
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
