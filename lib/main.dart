import 'package:flutter/material.dart';

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
   TextEditingController _controller = TextEditingController();
   TextEditingController _controller2 = TextEditingController();
   @override
   void dispose() {
     _controller.dispose();
     super.dispose();
   }


   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: _controller,
              onSubmitted: (String value) async {
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Thanks!'),
                      content: Text(
                          'You typed "$value", which has length ${value.characters.length}.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),

            Container(
              width: 400,
              child:
              TextFormField(keyboardType: TextInputType.number,
                controller: _controller2,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Введите любой текст',
                  labelText: 'Ваш текст',
                ),


              )
              ,
            ),

          ],
        ),
      ),
    );
  }
}
