import 'package:flutter/material.dart';
import '../screens/login.dart';
import '../screens/home.dart';
import '../screens/profile.dart';
import '../screens/splash.dart';

// Route Constants
const String initRoute = '/';
const String homeRoute = '/home';
const String loginRoute = '/login';
const String profileRoute = '/profile';

class Router {
 static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Splash());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
            child: Text('No route defined for ${settings.name}')),
        ));
    }
  }
}