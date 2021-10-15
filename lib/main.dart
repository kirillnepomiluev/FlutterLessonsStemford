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
  String dropdownValue = 'Воин';

  List<DropdownMenuItem<String>> dropDownItemsList = <DropdownMenuItem<String>> [
    const DropdownMenuItem<String>(
      value: 'Воин',
      child: Text('Воин'),
    ),
    const DropdownMenuItem<String>(
      value: 'Маг',
      child: Text('Маг'),
    ),
    const DropdownMenuItem<String>(
      value: 'Лучник',
      child: Text('Лучник'),
    ),
    const DropdownMenuItem<String>(
      value: 'Чернокнижник',
      child: Text('Чернокнижник'),
    )
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Выберете тип персонажа"),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: dropDownItemsList),
            //       items: classList.map((String item){
            //         return DropdownMenuItem(
            //             value: item,
            //             child: Text(item),
            //         );
            //      }).toList(),
            //   ),
            ),
          ],
        ),
      ),
    );
  }
}
