import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:info_me_mobile/Authorization/Singup.dart';
import 'package:info_me_mobile/Bottom_Navigation_Bar/buttom_nav.dart';

class LoginScreen extends StatefulWidget {
  @override
  LogIn createState() {
    // TODO: implement createState
    return LogIn();
  }
}

class LogIn extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(26, 188, 156, 100),
        ),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: <Widget>[
                  _HeaderPage(context),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 29,
                      ),
                      child: Column(
                        children: <Widget>[
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  'Email:',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                new SizedBox(
                                  height: 10,
                                ),
                                new TextFormField(
                                  decoration: new InputDecoration(
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 2),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(26, 188, 156, 100),
                                          width: 2),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(26, 188, 156, 100),
                                          width: 2),
                                    ),
                                    hintText: 'Enter Your Email',
                                  ),
                                  validator: _validatorEmail,
                                  onSaved: (String value) {},
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                new SizedBox(
                                  height: 10,
                                ),
                                new Text(
                                  'Password:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                new SizedBox(
                                  height: 10,
                                ),
                                new TextFormField(
                                  obscureText: _obscureText,
                                  keyboardType: TextInputType.text,
                                  validator: _validatorPassword,
                                  onSaved: (String value) {},
                                  decoration: new InputDecoration(
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 2),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(26, 188, 156, 100),
                                          width: 2),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(26, 188, 156, 100),
                                          width: 2),
                                    ),
                                    hintText: 'Enter Your Password',
                                    suffixIcon: GestureDetector(
                                      dragStartBehavior: DragStartBehavior.down,
                                      onTap: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      child: Icon(
                                        _obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        semanticLabel: _obscureText
                                            ? 'show password'
                                            : 'hide password',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox(
                                  height: 10,
                                ),
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    new Text(
                                      'forgot password?',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                new Padding(
                                  padding: EdgeInsets.only(
                                      left: 30, right: 30, top: 50, bottom: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new MaterialButton(
                                        height: 50,
                                        shape: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  26, 188, 156, 100),
                                              width: 2),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'LOGIN',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.teal[900]),
                                            ),
                                          ],
                                        ),
                                        onPressed: () {
                                          if (_formKey.currentState
                                              .validate()) {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) =>ButtonNavigation(),),);
                                          }
                                        },
                                      ),
                                      new SizedBox(
                                        height: 10,
                                      ),
                                      new MaterialButton(
                                        height: 50,
                                        shape: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  26, 188, 156, 100),
                                              width: 2),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'SIGNUP',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.teal[900]),
                                            ),
                                          ],
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SignUpScreen(),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 16,right: 16,top: 20,bottom: 40),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: (){},
                                            child: Row(
                                              children: <Widget>[
                                                Image.asset('images/google.png', height: 40,width: 40,),
                                                Text(' LogIn With Google Account', style: TextStyle(
                                                    fontSize: 15
                                                ),)
                                              ],
                                            ),
                                          ),
                                         GestureDetector(
                                           onTap: (){},
                                           child:  Row(
                                             children: <Widget>[
                                               Image.asset('images/facebook.png', height: 40,width: 40,),
                                               Text(' LogIn With Facebook Account', style: TextStyle(
                                                   fontSize: 15
                                               ),)
                                             ],
                                           ),
                                         )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _HeaderPage(context) {
  return Column(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/Path.png'),
          fit: BoxFit.fill,
        )),
        padding: EdgeInsets.only(top: 50, bottom: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome to Info-Me',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0, 3),
                          blurRadius: 5,
                          color: Colors.teal[900],
                        ),
                      ]),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'LOGIN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0, 3),
                          blurRadius: 5,
                          color: Colors.teal[900],
                        ),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

String _validatorEmail(String value) {
  if (value.isEmpty) {
    return 'Email cannot be empty';
  }
}

String _validatorPassword(String value) {
  if (value.isEmpty) {
    return 'Password cannot be empty';
  }
}
