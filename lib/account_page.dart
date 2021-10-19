// ignore: file_names


// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lessons/router.dart';

import 'main.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Аккаунт"),
      ),
      drawer: Drawer(child: Center(child: Container(child:  Text("меню"),)) ,),
      body: Center(
        child: IconButton(
          onPressed: (){
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => Lessons()));
           Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index){
            switch (index) {
              case 0:
               // Navigator.pushNamed(context, RouteNames.account);
              case 1:
                Navigator.pushNamed(context, RouteNames.secondPage);
                break;
            }

          },
          items: const [
            // Свойство, отвечающее за добавление нижней навигационной панели.

            BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Аккаунт",

            ),
            // Элементы навигационной панели.

            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Редактор"),

            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
          ],
        )

    );
  }
}