import 'package:flutter/material.dart';
import 'package:lessons/data/start_characters_const.dart';

import 'battle_screen.dart';

void main(){}

class CreateCharacter extends StatefulWidget {

  @override
  _CreateCharacterState createState() {
    return _CreateCharacterState();
  }
}

class _CreateCharacterState extends State<CreateCharacter> {

  TextEditingController nameController = TextEditingController();
  bool men = false;
  String classPersName = Classes.classesList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://phonoteka.org/uploads/posts/2021-07/1625780946_2-phonoteka-org-p-zamok-v-gorakh-art-krasivo-2.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              child: Card(
                color: Color(0x5FFFFFFF),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Создание персонажа:", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,),
                            child: Text("Имя:"),
                          ),
                          Expanded(
                              child: TextField( controller: nameController,)
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Пол:"),
                          ),
                          Text("Мужской:"),
                          Checkbox(value: men, onChanged: (value) {
                            setState(() {
                              men = value?? false;
                            });
                          }),
                          Text("Женский:"),
                          Checkbox(value: !men,  onChanged: (value) {
                            setState(() {
                              men = !(value?? false);
                            });
                          }),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Класс:"),
                          ),
                          DropdownButton(
                                value: classPersName,
                            onChanged: (value) {
                                  setState(() {
                                    classPersName = value.toString();
                                  });
                            },
                              items:  Classes.classesList.map((e) {
                            return DropdownMenuItem(child: Text(e), value: e, );
                          }).toList() ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                            return BattleScreen(nameController.text, classPersName);
                          }));
                        },
                        child: const Text("Создать персонажа"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(Colors.black),
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}