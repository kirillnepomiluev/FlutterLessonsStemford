import 'package:flutter/material.dart';
import 'package:lessons/data/battle_manager.dart';
import 'package:lessons/data/character.dart';
import 'package:lessons/data/start_characters_const.dart';

import '../character_container.dart';

class BattleScreen extends StatefulWidget {
final  String  name;
final  String classPers;
  const BattleScreen(this.name, this.classPers ,{Key? key}) : super(key: key);

  @override
  _BattleScreenState createState() {
    return _BattleScreenState();
  }
}

class _BattleScreenState extends State<BattleScreen> {

  String stateText = "";
  double animatedHeight = 50;
  double animatedOpacity = 0;

  @override
  void initState() {
    CharacterClass? userPers = Classes.startPersonages[widget.classPers];
    userPers!.name = widget.name;
    startNewGame(userPers);
    BattleManager.startNewBattle();

    super.initState();
  }

  onActionPressed (BattleActions battleAction ) async {
    {
      BattleActionsResults resultAction =   await BattleManager.currentBattle!.battleActionStep(battleAction);
      if (resultAction == BattleActionsResults.winBattle) {

        setState(() {
          stateText = "Победа!!!";
          animatedHeight = 100;
          animatedOpacity = 1.0;
        });
        currentGameData.qWins ++;

        await Future.delayed(const Duration(seconds: 2));
        BattleManager.startNewBattle();
        setState(() {
          stateText = "";
          animatedHeight = 50;
          animatedOpacity = 0;
        });
      } else if (resultAction == BattleActionsResults.loseBattle) {
        setState(() {
          stateText = "Поражение!!!";
          animatedHeight = 100;
          animatedOpacity = 1.0;
        });
        currentGameData.qLosts --;

        await Future.delayed(const Duration(seconds: 2));
        loseBattle();
        BattleManager.startNewBattle();

        setState(() {
          stateText = "";
          animatedHeight = 50;
          animatedOpacity = 0;
        });


      } else {
        setState(() {


        });

        await Future.delayed(const Duration(milliseconds: 500));

        BattleActionsResults resultActionEnemy =   await BattleManager.currentBattle!.battleActionEnemyStep();
        if (resultActionEnemy == BattleActionsResults.winBattle) {

          setState(() {
            stateText = "Победа!!!";
            animatedHeight = 100;
            animatedOpacity = 1.0;

          });
          currentGameData.qWins ++;

          await Future.delayed(const Duration(seconds: 3));
          BattleManager.startNewBattle();
          setState(() {
            stateText = "";
            animatedHeight = 50;
            animatedOpacity = 0;
          });
        } else if (resultActionEnemy == BattleActionsResults.loseBattle) {
          setState(() {
            stateText = "Поражение!!!";
            animatedHeight = 100;
            animatedOpacity = 1.0;
          });
          currentGameData.qLosts --;

          await Future.delayed(const Duration(seconds: 3));
          loseBattle();
          BattleManager.startNewBattle();

          setState(() {
            stateText = "";
            animatedHeight = 50;
            animatedOpacity = 0;
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
                  Positioned( top: 40,

                    child: AnimatedOpacity(
                      curve: Curves.bounceInOut,
                      opacity: animatedOpacity,
                      duration: const Duration(seconds: 2),
                      child: AnimatedContainer(
                        curve: Curves.easeInSine,
                        duration: const Duration(seconds: 2),
                        height: animatedHeight,
                        child: Text(stateText, style:  const TextStyle(
                          fontWeight: FontWeight.bold, fontSize:  40,  color:  Colors.red
                        ),),
                      ),
                    ),
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
