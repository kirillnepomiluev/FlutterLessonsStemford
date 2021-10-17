import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MyAnimation(),
    );
  }
}

class MyAnimation extends StatefulWidget {

  @override
  _MyAnimationState createState() {
    return _MyAnimationState();
  }
}

class _MyAnimationState extends State<MyAnimation> {

  bool isView = false;
  double position = 40;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Scaffold(
    //   appBar: AppBar(title: Text('Animation example')),
    //   body: Center(
    //     child: AnimatedOpacity(
    //       duration: Duration(milliseconds: 2000),
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

    // return Scaffold(
    //   appBar: AppBar(title: Text('Animation example')),
    //   body: Center(
    //     child: AnimatedOpacity(
    //       duration: Duration(milliseconds: 400),
    //       opacity: isView ? 0.0 : 1.0,
    //       curve: ExampleCurve(),
    //       child: GestureDetector(
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
            left: position,
            duration: Duration(milliseconds: 400),
            child: Image.network('https://cdn.pixabay.com/photo/2012/04/11/17/34/car-29078_640.png',
              width: 200.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('GO!'),
        onPressed: () {
          setState(() {
            position += 40;
          });
        },
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
