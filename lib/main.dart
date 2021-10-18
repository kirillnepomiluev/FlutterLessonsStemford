import 'package:flutter/material.dart';
import 'package:lessons/screens/createCharacter.dart';

void main() => runApp(MyGame());

class MyGame extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: CreateCharacter(),
    );
  }
}

