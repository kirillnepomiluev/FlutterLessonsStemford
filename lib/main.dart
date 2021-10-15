import 'package:flutter/material.dart';
import 'package:lessons/classList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Уроки Flutter",
      home: Lessons(),
    );
  }
}

class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {

  @override
  Widget build(BuildContext context) {

    return Scaffold( backgroundColor: Colors.white,
      body: ListView(
        children: character.map((Map<String, String> item){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Card(
              elevation:8,
              color: Colors.white60,
              child: Center(
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(Icons.edit, size: 30,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Класс - ${item["Класс"]}", style: TextStyle(fontSize: 20, ),),
                        Text("Тип брони - ${item["Тип доспехов"]}", style: TextStyle(fontSize: 18, ),),
                        Text("Основная характеристика - ${item["Основная харрактеристика"]}",
                          style: TextStyle(fontSize: 16, ),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      )
    );
  }
}
