



import 'dart:core';
import 'dart:math';

import 'package:lessons/data/character.dart';
import 'package:lessons/data/start_characters_const.dart';

class BattleManager {
 static  Battle? currentBattle;

 static startNewBattle() {
   currentBattle = Battle(generateNewEnemy());
 }
}


class Battle {
  CharacterClass enemy;
  Battle(this.enemy);
  int qSteps = 0;

 Future<BattleActionsResults>  battleActionStep (BattleActions action) async {
    qSteps ++;
    switch (action) {
      case BattleActions.attack:
        currentGameData.character!.attack(enemy);
        break;
      case BattleActions.defence:
      // TODO: Handle this case.
        break;
      case BattleActions.tryRun:
      // TODO: Handle this case.
        break;
      case BattleActions.useHealthPotion:
      // TODO: Handle this case.
        break;
      case BattleActions.secretSpec:
      // TODO: Handle this case.
        break;
    }




    if (enemy.currentHp > 0) {
      return BattleActionsResults.continueBattle;
    } else {
        return BattleActionsResults.winBattle;
    }

  }

  Future<BattleActionsResults> battleActionEnemyStep ()  async{
    if (enemy.currentHp > 0) {
      BattleActions enemyAction = choseEnemyAction();

      switch (enemyAction) {
        case BattleActions.attack:
          enemy.attack(currentGameData.character);
          break;
        case BattleActions.defence:
        // TODO: Handle this case.
          break;
        case BattleActions.tryRun:
        // TODO: Handle this case.
          break;
        case BattleActions.useHealthPotion:
        // TODO: Handle this case.
          break;
        case BattleActions.secretSpec:
        // TODO: Handle this case.
          break;
      }

      if( currentGameData.character!.currentHp > 0) {
        return BattleActionsResults.continueBattle;
      }
      else {
        return BattleActionsResults.loseBattle;
      }

    } else {
      return BattleActionsResults.winBattle;
    }
  }

}

BattleActions choseEnemyAction() {
  Random random = Random();
  int randomNumber = random.nextInt(10);
  if (randomNumber <2) {
    return BattleActions.defence;
  } else if (randomNumber <9) {
    return BattleActions.attack;
  } else {
    return BattleActions.tryRun;
  }
}

CharacterClass  generateNewEnemy() {
  Random random = Random();
  int randomNumber = random.nextInt(Classes.enemyesList.length);
  Classes.enemyesList[randomNumber].currentHp =  Classes.enemyesList[randomNumber].maxHp;
  return Classes.enemyesList[randomNumber];
}



class BattleAction {
  static const String attack = "attack";
  static const String defence  = "defence";
  static const String tryRun  = "tryRun";
  static const String useHealthPotion  = "useHealthPotion";
  static const String  secretSpec = "secretSpec";
  static const List<String> allBattleActions = [attack, defence, tryRun, useHealthPotion, secretSpec];


}

enum BattleActions {
  attack,
  defence,
  tryRun,
  useHealthPotion,
  secretSpec,
}

enum BattleActionsResults {
  winBattle,
  loseBattle,
  continueBattle,
}