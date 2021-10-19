import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessons/data/battle_manager.dart';
import 'package:lessons/data/character.dart';

class CharacterContainer extends StatefulWidget {
  final bool enemy;
   CharacterContainer({Key? key, this.enemy = false}) : super(key: key);

  @override
  _CharacterContainerState createState() {
    return _CharacterContainerState();
  }
}

class _CharacterContainerState extends State<CharacterContainer> {

  @override
  Widget build(BuildContext context) {
    double _currentHPPercent;
    String _currentHP;
    String _imageUrl;
    String _name;
    if (widget.enemy) {
      _name = BattleManager.currentBattle!.enemy.name;
      _currentHP = BattleManager.currentBattle!.enemy.currentHp.toString();
      _currentHPPercent = BattleManager.currentBattle!.enemy.currentHp /
          BattleManager.currentBattle!.enemy.maxHp;
      _imageUrl =  BattleManager.currentBattle!.enemy.imageURL;

    } else {
      _name =  currentGameData.character!.name;
      _currentHP = currentGameData.character!.currentHp.toString();
      _currentHPPercent = currentGameData.character!.currentHp / currentGameData.character!.maxHp;
      _imageUrl =  currentGameData.character!.imageURL;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: widget.enemy? CrossAxisAlignment.end : CrossAxisAlignment.start ,
        children: [
          Text(_name, style: const TextStyle( color: Colors.green, fontWeight: FontWeight.bold,  ),),
          Text(_currentHP, style: const TextStyle( color: Colors.red, fontWeight: FontWeight.bold,  ),),
          LinearProgressIndicator(
            minHeight: 10,
            backgroundColor: Colors.red,
            value: _currentHPPercent,
          ),
          Image.network(_imageUrl),
        ],
      ),
    );
  }
}