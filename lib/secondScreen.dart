

import 'package:flutter/material.dart';
import 'package:lessons/router.dart';

import 'main.dart';

class Lessons2 extends StatefulWidget {
  @override
  _Lessons2State createState() => _Lessons2State();
}

class _Lessons2State extends State<Lessons2> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Страница 2"),
      ),
      body: Center(
        child: IconButton(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Lessons()));
          //  Navigator.pushNamed(context, RouteNames.main);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}