import 'package:flutter/material.dart';
import 'package:lessons/screens/battle_screen.dart';
import 'package:lessons/screens/create_character.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MyGame());

class MyGame extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // AssetsAudioPlayer.newPlayer().open(
    //   Audio("assets/audios/song.mp3"),
    //   autoStart:  true,
    //   showNotification: true,
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BattleScreen(),
    );
  }
}

