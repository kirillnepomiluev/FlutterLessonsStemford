import 'package:flutter/material.dart';
import 'package:lessons/classList.dart';
import 'package:lessons/router.dart';
import 'package:lessons/secondScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Уроки Flutter",
      home: Lessons(),
      onGenerateRoute: MyRouter.generateRoute,
      initialRoute: RouteNames.main,
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

    return Scaffold(
      appBar: AppBar(
        title: const Text("Страница 1"),
      ),
     body: Center(
       child: IconButton(
         onPressed: (){
           Navigator.push(context,
               MaterialPageRoute(builder: (context) => Lessons2()));

         //  Navigator.pushNamed(context, RouteNames.secondPage);
         },
         icon: const Icon(Icons.arrow_forward),
       ),
     ),
    );
  }
}
