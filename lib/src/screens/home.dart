import 'package:flutter/material.dart';
import '../router/router.dart';

class HomeState extends State<Home> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
        backgroundColor: Colors.red,
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Home"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Hello, world $counter",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, loginRoute,
                    arguments: 'Data from home');
              },
              textColor: Colors.white,
              color: Colors.red,
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Go To Login",
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, profileRoute,
                    arguments: 'Data from home');
              },
              textColor: Colors.white,
              color: Colors.red,
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Go To Profile",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}
