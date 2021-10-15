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
     _controller2.dispose();
     super.dispose();
   }

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(  decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(10))),
              icon: Icon(Icons.person),
              hintText: 'Введите любой текст',
              labelText: 'Ваш текст',
            ) ,
              controller: _controller,
              onSubmitted: (String value) async {
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Спасибо!'),
                      content: Text(
                          'Вы ввели "$value", его длина ${value.characters.length}.'),
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

            SizedBox(
              width: 400,
              child:
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: _controller2,
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(
                  //     borderRadius:
                  // BorderRadius.all(Radius.circular(20))),
                  icon: Icon(Icons.person),
                  hintText: 'Введите любой текст',
                  labelText: 'Ваш текст',
                ),

                onFieldSubmitted: (value) {
                  showDialog(context: context, builder: (BuildContext context) {
                    return               AlertDialog(
                      title: const Text('Спасибо!'),
                      content: Text(
                          'Вы ввели " "${_controller2.text}", его длина ${_controller2.text.length}.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  }, );
                },
              )
              ,
            ),
            TextButton(onPressed: () {
                showDialog(context: context, builder: (BuildContext context) {
                  return               AlertDialog(
                    title: const Text('Спасибо!'),
                    content: Text(
                        'Вы ввели "${_controller.text}", его длина ${_controller.text.length}.'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                }, );
            }, child: const Text(
              "OK"
            ),)
          ],
        ),
      ),
    );
  }
}
