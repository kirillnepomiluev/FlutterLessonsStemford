import 'package:flutter/material.dart';
import 'package:lessons/secondScreen.dart';

import 'main.dart';

class RouteNames {
  static const main = '/';
  static const secondPage = '/second';
}
class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case RouteNames.main:
        return MaterialPageRoute(builder: (_) => Lessons());


      case RouteNames.secondPage:
        return MaterialPageRoute(builder: (_) => Lessons2());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}