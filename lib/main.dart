import 'package:assets_audio_player/assets_audio_player.dart';
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
        title: Text("Страница 1"),
      ),
     body: Center(
       child: IconButton(
         onPressed: (){
           AssetsAudioPlayer.newPlayer().open(
             Audio("assets/audios/song.mp3"),
             autoStart: true,
             showNotification: true,
           );
         },
         icon: Icon(Icons.play_circle_fill),
       ),
     ),
    );
  }
}
