import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MyApp2(),
    );
  }
}

class MyApp2 extends StatefulWidget {

  @override
  _MyApp2State createState() {
    return _MyApp2State();
  }
}

class _MyApp2State extends State<MyApp2>{
  String value = "Сохранение";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Сохранение и загрузка данных"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Text("")
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setString("TextString_key", "Сохранение 1");
                  },
                  child: Text("Сохранить игру"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  setState(() {
                    value = prefs.setString("TextString_key") ?? "NULL";
                  });
                },
                child: Text("Сохранить игру"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.remove("TextString_key");
                },,
                child: Text("Сохранить игру"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


