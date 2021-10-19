import 'package:flutter/material.dart';
import 'package:lessons/data/battle_manager.dart';
import 'package:lessons/data/character.dart';
import 'package:lessons/data/start_characters_const.dart';

import '../character_container.dart';

class BattleScreen extends StatefulWidget {
  @override
  _BattleScreenState createState() {
    return _BattleScreenState();
  }
}

class _BattleScreenState extends State<BattleScreen> {

  String stateText = "";

  @override
  void initState() {
    CharacterClass? userPers = Classes.startPersonages[Classes.warrior];
    userPers!.name = "Имя";
    startNewGame(userPers);
    BattleManager.startNewBattle();

    super.initState();
  }

  onActionPressed (BattleActions battleAction ) async{
    {
      BattleActionsResults resultAction =   await BattleManager.currentBattle!.battleActionStep(battleAction);
      if (resultAction == BattleActionsResults.winBattle) {

        setState(() {
          stateText = "Победа!!!";
        });
        currentGameData.qWins ++;

        await Future.delayed(const Duration(seconds: 2));
        BattleManager.startNewBattle();
        setState(() {
          stateText = "";
        });
      } else if (resultAction == BattleActionsResults.loseBattle) {
        setState(() {
          stateText = "Поражение!!!";
        });
        currentGameData.qLosts --;

        await Future.delayed(const Duration(seconds: 2));
        loseBattle();
        BattleManager.startNewBattle();

        setState(() {
          stateText = "";
        });


      } else {
        setState(() {


        });

        await Future.delayed(const Duration(milliseconds: 500));

        BattleActionsResults resultActionEnemy =   await BattleManager.currentBattle!.battleActionEnemyStep();
        if (resultActionEnemy == BattleActionsResults.winBattle) {

          setState(() {
            stateText = "Победа!!!";
          });
          currentGameData.qWins ++;

          await Future.delayed(const Duration(seconds: 2));
          BattleManager.startNewBattle();
          setState(() {
            stateText = "";
          });
        } else if (resultActionEnemy == BattleActionsResults.loseBattle) {
          setState(() {
            stateText = "Поражение!!!";
          });
          currentGameData.qLosts --;

          await Future.delayed(const Duration(seconds: 2));
          loseBattle();
          BattleManager.startNewBattle();

          setState(() {
            stateText = "";
          });


        } else {
          setState(() {


          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex:6,
            child: Container(
              decoration: const BoxDecoration(
                image:  DecorationImage(
                  image: NetworkImage("https://phonoteka.org/uploads/posts/2021-07/1625780946_2-phonoteka-org-p-zamok-v-gorakh-art-krasivo-2.jpg",),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack( alignment: Alignment.topCenter,
                children: [
                  Row( crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(child: CharacterContainer()),
                      Expanded(child: CharacterContainer(enemy: true,)),
                    ],
                  ),
                  Positioned( top: 200,

                    child: Text(stateText, style:  const TextStyle(
                      fontWeight: FontWeight.bold, fontSize:  40,  color:  Colors.red
                    ),),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://phonoteka.org/uploads/posts/2021-06/1623283755_6-phonoteka_org-p-kamennaya-kladka-tekstura-besshovnaya-cher-13.jpg",),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: const Color(0x5FFFFFFF),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              onActionPressed(BattleActions.attack);
                            },
                            child: const Text("Атаковать!"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white60),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              side: MaterialStateProperty.all(
                                  const BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              onActionPressed(BattleActions.defence);
                            },
                            child: const Text("Защищаться!"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white60),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              side: MaterialStateProperty.all(
                                 const BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              onActionPressed(BattleActions.tryRun);
                            },
                            child: const Text("Сбежать!"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white60),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              side: MaterialStateProperty.all(
                                  const BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              onActionPressed(BattleActions.useHealthPotion);
                            },
                            child: const Text("Выпить зелье!"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white60),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              side: MaterialStateProperty.all(
                                  const BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              onActionPressed(BattleActions.secretSpec);
                            },
                            child: const Text("Секретный прием!"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white60),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              side: MaterialStateProperty.all(
                                  const BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
