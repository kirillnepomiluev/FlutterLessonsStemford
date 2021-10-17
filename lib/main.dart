import 'dart:math';
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

// class MyAnimation extends StatefulWidget {
//
//   @override
//   _MyAnimationState createState() {
//     return _MyAnimationState();
//   }
// }
//
// class _MyAnimationState extends State<MyAnimation> {
//
//   bool isChangeWidget = false;
//   bool startAnimation = false;
//
//   @override
//   Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: Text('Animation example')),
    //   body: Center(
    //     child: SizedBox(
    //       width: 200.0,
    //       height: 200.0,
    //       child: InkWell(
    //         onTap: () => setState(() => isChangeWidget = !isChangeWidget),
    //         child: AnimatedCrossFade(
    //           crossFadeState: isChangeWidget ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    //           duration: const Duration(seconds: 2),
    //           firstChild: Container(color: Colors.green),
    //           secondChild: Container(color: Colors.red),
    //         ),
    //       ),
    //     ),
    //   ),
    // );

    // return Scaffold(
    //   appBar: AppBar(title: Text('Animation example')),
    //   body: Center(
    //     child: InkWell(
    //       onTap: () => setState(() => startAnimation = !startAnimation),
    //       child: AnimatedContainer(
    //         decoration: BoxDecoration(
    //           color: startAnimation ? Colors.lightGreen : Colors.red,
    //           borderRadius: BorderRadius.circular(startAnimation ? 15.0 : 0.0),
    //         ),
    //         width: startAnimation ? 100 : 200,
    //         height: startAnimation ? 100 : 200,
    //         curve: Curves.easeInOutCubic,
    //         duration: Duration(seconds: 1),
    //       ),
    //     ),
    //   ),
    // );
//   }
// }

class MyApp2 extends StatefulWidget {

  @override
  _MyApp2State createState() {
    return _MyApp2State();
  }
}


class _MyApp2State extends State<MyApp2> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    _animationController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation example')),
      body: InkWell(
        onTap: () => _animationController.forward(),
        child: Opacity(
          opacity: 1.0 - _animationController.value,
          child: Container(
            color: Colors.orange,
            height: 200.0,
            width: 200.0 + (200 * _animationController.value),
          ),
        ),
      ),
    );
  }
}


