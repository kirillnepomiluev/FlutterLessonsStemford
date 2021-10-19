import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: MyApp2(),
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
  bool startAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Урок по анимации часть2')),
      body: Center(
        child: InkWell(
          onTap: () => setState(() => startAnimation = !startAnimation),
          child: buildAnimatedCrossFade(),

        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer() {
    return AnimatedContainer(
            decoration: BoxDecoration(
              color: startAnimation ? Colors.lightGreen : Colors.red,
              borderRadius: BorderRadius.circular(startAnimation ? 20.0 : 0.0),
            ),
            width: startAnimation ? 100 : 200,
            height: startAnimation ? 100 : 200,
            curve: Curves.easeInOutCubic,
            duration: const Duration(seconds: 2),
          );
  }

  Widget buildAnimatedCrossFade() {
    return Center(
      child: AnimatedCrossFade(
             firstCurve: Curves.easeInOutCubic,
              secondCurve: Curves.bounceInOut,
              reverseDuration: const Duration(seconds: 2),
              crossFadeState: startAnimation ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 2),
              alignment: Alignment.bottomRight,
              firstChild:  const Text("Старт"),
              secondChild: Container(
                width: 200, height: 200,
                decoration: const BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.all(
                  Radius.circular(50))
              ),),
            ),
    );
  }
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  _MyApp2State createState() {
    return _MyApp2State();
  }
}


class _MyApp2State extends State<MyApp2> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
       duration: const Duration(milliseconds: 5000),
        vsync: this,
     reverseDuration: const Duration(milliseconds: 1000)
    );
    _animationController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Урок по анимации часть2')),
      body: GestureDetector(

      //onTap: () {_animationController.forward();},
        onDoubleTap: () {
          debugPrint("onDoubleTap");
          _animationController.reverse();
        },
       onTapDown: (a) => _animationController.forward(),
        // onTapUp: (a) {
        //   debugPrint("onTapUp");
        //   _animationController.reverse();
        // },
        child: Opacity(
          opacity: 1.0 - _animationController.value /3,
          child: Padding(
            padding:  EdgeInsets.only(top: 0 + ((500 * _animationController.value))),
            child: Container(
              color: Colors.orange,
              height: 100.0,
              width: 100,
              child: Center(child: Text(_animationController.value.toStringAsFixed(2))),
            ),
          ),
        ),
      ),
    );
  }
}


