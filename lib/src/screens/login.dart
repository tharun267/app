import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    final logoText = Container(
      margin: const EdgeInsets.only(top: 50, left: 50),
      child: Text(
        "Lines",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 28.0,
            fontWeight: FontWeight.w500),
      ),
    );

    final someText1 = Container(
      margin: const EdgeInsets.only(top: 50, left: 50),
      child: Text(
        "Welcome back,",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 29.0,
            fontWeight: FontWeight.w400),
      ),
    );

    final someText2 = Container(
      margin: const EdgeInsets.only(top: 5, left: 50),
      child: Text(
        "sign in to continue",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 29.0,
            fontWeight: FontWeight.w400,
            color: Colors.grey[500]),
      ),
    );

    final someText3 = Container(
      margin: const EdgeInsets.only(top: 5, left: 50),
      child: Text(
        "to Lines.",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 29.0,
            fontWeight: FontWeight.w400,
            color: Colors.grey[500]),
      ),
    );

    final emailField = Container(
        margin: const EdgeInsets.only(top: 70, left: 50, right: 50),
        child: TextField(
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
            decoration: InputDecoration(
              hintText: "Email",
              border: InputBorder.none,
              focusColor: Colors.blueAccent[400],
              focusedBorder: new UnderlineInputBorder(
                  borderSide:
                      new BorderSide(color: Colors.blue[400], width: 2.0)),
            )));

    final passwordField = Container(
        margin: const EdgeInsets.only(top: 20, left: 50, right: 50),
        child: TextField(
            obscureText: true,
            keyboardType: TextInputType.text,
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
            decoration: InputDecoration(
              focusColor: Colors.blueAccent[400],
              border: InputBorder.none,
              focusedBorder: new UnderlineInputBorder(
                  borderSide:
                      new BorderSide(color: Colors.blue[400], width: 2.0)),
              hintText: "Password",
            )));

    final loginBtn = Container(
      margin: const EdgeInsets.only(top: 70, left: 50),
      child: Text(
        "Login",
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 28.0,
            color: Colors.blue[400],
            fontWeight: FontWeight.w400),
      ),
    );

    final someText4 = Container(
        margin: const EdgeInsets.only(top: 70),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              "Don't have an account? Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[600]),
            )));

    return new Scaffold(
        body: SingleChildScrollView(
            child: Builder(
                builder: (scafoldContext) => new SafeArea(
                        child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        logoText,
                        someText1,
                        someText2,
                        someText3,
                        emailField,
                        passwordField,
                        loginBtn,
                        someText4
                      ],
                    )))));
  }
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}
