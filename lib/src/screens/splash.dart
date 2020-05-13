import 'package:app/src/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<bool> checkUserAndNavigate(BuildContext context) async {
  await Future.delayed(Duration(seconds: 5));
  return true;
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Login Check
    SystemChrome.setEnabledSystemUIOverlays([]);
    checkUserAndNavigate(context).then((res) {
      SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
      if (res == true) {
        Navigator.pushReplacementNamed(context, homeRoute);
      } else {
        Navigator.pushReplacementNamed(context, loginRoute);
      }
    });
    return new Scaffold(
      body: new Card(
        child: new Center(
          child:
            new Text('Loading.....',
              style: new TextStyle(fontSize: 24.00,
                 fontWeight: FontWeight.bold,
                 color: Colors.indigo)
            ),
          )
        ),
    );
  }
}