import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:lessons/classList.dart';
import 'package:lessons/router.dart';
import 'package:lessons/secondScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Уроки Flutter",
      home: Lessons(),
      onGenerateRoute: MyRouter.generateRoute,
      initialRoute: RouteNames.main,
    );
  }
}

class Lessons extends StatefulWidget {
  const Lessons({Key? key}) : super(key: key);

  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {


  @override
  void initState() {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/audios/song.mp3"),
      autoStart: true,
      showNotification: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Страница 1"),
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
         icon: const Icon(Icons.play_circle_fill, size: 70,),
       ),
     ),
    );
  }
}
