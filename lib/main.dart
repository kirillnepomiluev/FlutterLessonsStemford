import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAnimation(),
    );
  }
}

class MyAnimation extends StatefulWidget {
  const MyAnimation({Key? key}) : super(key: key);

  @override
  _MyAnimationState createState() {
    return _MyAnimationState();
  }
}

class _MyAnimationState extends State<MyAnimation> {

  bool isView = false;
  double position = 10;

  @override
  Widget build(BuildContext context) {

    // return Scaffold(
    //   appBar: AppBar(title: const Text('Урок по анимации часть 1')),
    //   body: Center(
    //     child: AnimatedOpacity(
    //       curve: ExampleCurve(),
    //       //кривая по которой просиходит расчет
    //       // значений для анимации
    //       duration: const Duration(milliseconds: 2000),
    //       opacity: isView ? 0.0 : 1.0,
    //       child: InkWell(
    //         onTap: () => setState(() => isView = !isView),
    //         child: Container(
    //           width: 200.0,
    //           height: 200.0,
    //           color: Colors.green,
    //         ),
    //       ),
    //     ),
    //   ),
    // );



    return Scaffold(
      appBar: AppBar(title: Text('Animation example')),
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          AnimatedPositioned(
            curve: Curves.ease,
            left: position,
            duration: const Duration(milliseconds: 600),
            child: Image.network('https://cdn.pixabay.com/photo/2012/04/11/17/34/car-29078_640.png',
              width: 200.0,
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: FloatingActionButton(
              child: const Text('Start'),
              onPressed: () {
                setState(() {
                  position = 10;
                });
              },
            ),
          ),
          FloatingActionButton(
            child: const Text('GO!'),
            onPressed: () {
              setState(() {
                position += 350;
              });
            },
          ),
        ],
      ),
    );
  }
 }



class ExampleCurve extends Curve {
  final double count;

  ExampleCurve({this.count = 3});

  @override
  double transformInternal(double t) {
    var val = sin(count * 2 * pi * t) * 0.5 + 0.5;
    return val;
  }
}
