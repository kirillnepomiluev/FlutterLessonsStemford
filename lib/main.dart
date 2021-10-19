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
     // home: Lessons(),
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
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Страница 1"),
      ),
     body: Center(
       child: IconButton(
         onPressed: (){
           Navigator.pushNamed(context, RouteNames.secondPage
              );

         //  Navigator.pushNamed(context, RouteNames.secondPage);
         },
         icon: const Icon(Icons.arrow_forward),
       ),
     ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index){
          switch (index) {
            case 0:
            Navigator.pushNamed(context, RouteNames.account);
            break;
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
,
    );
  }
}
