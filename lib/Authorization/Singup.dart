import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:info_me_mobile/Authorization/login.dart';
import 'package:icon_shadow/icon_shadow.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUp createState() {
    // TODO: implement createState
    return SignUp();
  }
}

class SignUp extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
                          left: 16, right: 16, top: 29, bottom: 16),
                      child: Column(
                        children: <Widget>[
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  'First Name:',
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
                                    hintText: 'Enter Your First Name',
                                  ),
                                  validator: _validatorFirstName,
                                  onSaved: (String value) {},
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                new SizedBox(
                                  height: 10,
                                ),
                                new Text(
                                  'Last Name:',
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
                                    hintText: 'Enter Your Last Name',
                                  ),
                                  validator: _validatorLastName,
                                  onSaved: (String value) {},
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                new SizedBox(
                                  height: 10,
                                ),
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
                                  'Address:',
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
                                    hintText: 'Enter Your Address',
                                  ),
                                  validator: _validatorEmail,
                                  onSaved: (String value) {},
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                new SizedBox(
                                  height: 10,
                                ),

                                new Text(
                                  'Date of Birth:',
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
                                    hintText: 'Enter Your Date of Birth',
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
                                new Padding(
                                  padding: EdgeInsets.only(
                                      left: 30, right: 30, top: 30),
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
                                              'SIGNUP',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.teal[900]),
                                            ),
                                          ],
                                        ),
                                        onPressed: () {
                                          if (_formKey.currentState
                                              .validate()) {}
                                        },
                                      ),
                                    ],
                                  ),
                                )
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
        padding: EdgeInsets.only(top: 5, bottom: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  child: Row(
                    children: <Widget>[
                      IconShadowWidget(
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 35,
                        ),
                        showShadow: true,
                        shadowColor: Colors.teal[900],
                      ),
                      Text(
                        'BACK',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: <Shadow>[
                              Shadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 4,
                                  color: Colors.teal[900]),
                            ]),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
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
                  'SIGNUP',
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

String _validatorFirstName(String value) {
  if (value.isEmpty) {
    return 'First Name cannot be empty';
  }
}

String _validatorLastName(String value) {
  if (value.isEmpty) {
    return 'Last Name cannot be empty';
  }
}

String _validatorEmail(String value) {
  if (value.isEmpty) {
    return 'Email cannot be empty';
  }
  String p = r'^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}';
  RegExp regExp = new RegExp(p);
  if (regExp.hasMatch(value)) {
    return null;
  }
  return 'Email provided isn\'t valid.Try another email address';
}

String _validatorPassword(String value) {
  if (value.isEmpty) {
    return 'Password cannot be empty';
  }
  if (value.length < 8) {
    return 'Password length must be greater than 8';
  }
  String reg = "[A-Z]+" + "[0-9a-zA-Z]";
  RegExp PasswordregExp = new RegExp(reg);
  if (!PasswordregExp.hasMatch(value))
    return 'Please Add UpperCase, LowerCase, Number And Sysmbl';
  return null;
}
