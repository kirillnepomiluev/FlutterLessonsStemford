import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Уроки Flutter",
      home: Lessons(),

    );
  }

}

class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  bool? isChecked = false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        drawer: Drawer(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(
                    color: Colors.blueAccent,
                    width: 2,
                  )),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blueAccent,
                  Colors.lightBlueAccent,
                  Colors.white,
                  Colors.lightBlueAccent,
                  Colors.blueAccent,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blueAccent),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.account_box,
                            size: 30,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "Профиль",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.lightBlueAccent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blueAccent),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.edit,
                            size: 30,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "Заметки",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.lightBlueAccent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blueAccent),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.timer_outlined,
                            size: 30,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "Уведомления",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.lightBlueAccent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blueAccent),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.settings,
                            size: 30,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "Настройки",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.lightBlueAccent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Органайзер",
          ),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: "Аккаунт"),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Редактор"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
          ],
        ),
        // body: Center(
        //
        // ),

        // Все кнопки и поля для галочек наследуются от класса InkWell(), с
        // помощью которого можно создавать уникальные кнопки и поля с фильтрами.

        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Checkbox( // При помощи этого виджета мы можем создать поля для
                    // галочек. Рассмотрим пример:

                    checkColor: Colors.black,
                    // Свойство, отвкечающее за цвет галочки

                    fillColor: MaterialStateProperty.all(Colors.blue),
                    // Свойство, отвечающее
                    // за цвет поля

                    value: isChecked,
                    // В данное поле мы помещаем переменную типы bool,
                    // опираясь на которое будет перестраиваться экран.

                    onChanged: (
                        value) { // Метод, срабатывающий при нажатии на поле.
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                  TextButton(onPressed: () {
                    setState(() {
                      isChecked = !(isChecked?? false);
                    });
                  },
                  child: Text(" Подтвердите пользовательское соглашение"))
                ],
              ),

              Opacity(

                opacity: isChecked ?? false ? 1.0 : 0.4,
                child: InkWell(

                  onTap: !(isChecked ?? false) ? null : () {
                    showDialog(
                      context: context, builder: (BuildContext context) {
                      return Dialog(
                        child: Container(
                          width: 300,
                          height: 300,
                          child: Center(child: Text(
                              "нажатие onTap"
                          ),),
                        ),
                      );
                    },
                    );
                  },
                  onLongPress: !(isChecked?? false) ? null: (){
                    showDialog(context: context, builder: (BuildContext context) {
                      return Dialog(
                        child: Container( width: 300, height: 200,
                          child: Center(child: Text(
                              "нажатие onLongPress"
                          ),),
                        ),
                      );
                    },);

                  },
                  onDoubleTap: !(isChecked ?? false) ? null : () {
                    showDialog(
                      context: context, builder: (BuildContext context) {
                      return Dialog(
                        child: Container(
                                width: 200, height: 200,
                          child: Center(child: Text(
                              "нажатие onDoubleTap"
                          ),),
                        ),
                      );
                    },);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent[200],
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      ),

                    ),
                    child: Text("Далее"),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
