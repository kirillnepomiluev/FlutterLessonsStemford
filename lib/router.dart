import 'package:flutter/material.dart';
import 'package:lessons/secondScreen.dart';

import 'main.dart';

class RouteNames {
  static const main = '/';    //  static переменная означает что для обращения
  // к этой переменной не нужно создавать обьект класса.  Можно обращаться к ней
  // напрямую через RouteNames.main  название класса и точку. Не важно сколько
  // обьектов класса созданно и есть ли они вообще, эта переменная всегда одна.

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