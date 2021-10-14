// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(Lessons());

class Lessons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Уроки Flutter",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Урок 22",
          ),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_box) , label: "Аккаунт"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Редактор"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label:"Поиск"),
        ],),

        /// До сегодняшнего дня мы могли помещать в тело страницы только текст.
        /// Сегодня мы научимся создавать новый элемент - контейнер
        /// Как следует из названия контейнер - это хранилище для чего либо.
        /// При этом он имеет определенные размеры, цвет, форму и т.д.
        /// Рассмотрим виджет Container(), а также его свойства:

        // body: Container(
        //   child:  Padding(
        //     padding:  EdgeInsets.all(8.0),
        //     child: Text("Контейнер", style: TextStyle(color: Colors.black87, fontSize: 30),),
        //   ), /// Свойство, в которое помещается содержимое контейнера.
        //   /// Принимает в себя различные виджеты. В примере в контейнер помещается текст.
        //
        //   width: 250, // Свойство, отвечающее за ширину контейнера. Принимает в себя
        //   // вещественное число.
        //
        //   height:130, // Свойство, отвечающее за высоту контейнера. Принимает в себя
        //   // вещественное число.
        //
        //   // color: Colors.blueGrey, /// Свойство, отвечающее за цвет контейнера.
        //   // Принимает в себя виджет Color(). Важно:
        //   /// виджет BoxDecoration также имеет свойство color, поэтому если у нас имеется
        //   /// свойство decoration, но цвет
        //   /// контейнера необходимо указывать именно внутри него.
        //
        //   decoration:  BoxDecoration( // Свойство, отвечающее за стилизацию контейнера.
        //     // Принимает в себя виджет BoxDecoration().
        //
        //     boxShadow: const [
        //       BoxShadow( // Свойство, отвечающее за добавление теней объекту.
        //       // Принимает в себя виджеты BoxShadow().
        //
        //       color: Colors.black, // Свойство, отвечающее за цвет тени
        //
        //       blurRadius: 3, // Свойство, задающее радиус размытия тени. Принимает в себя
        //       // вецественное число.
        //
        //       offset: Offset(10, 5), // Свойство, отвечающее за смещение тени относительно
        //       // объекта. Принимает в себя два числа: одно отвечает за смещение по горизонтали,
        //       // другое - за смещение по вертикали.
        //
        //   ),
        //     ],
        //
        //     // borderRadius: BorderRadius.circular(30), /// Свойство, отвечающее
        //     // за скругление углов контейнера. Принимает в себя вещественное число.
        //
        //     gradient: LinearGradient( /// Свойство, отвечающее за нанесение градиента
        //       /// на контейнер. Принимает в себя различные виджеты, отвечающие
        //       /// за форму градиента. В нашем примере градиент - линейный. Важно: если мы
        //       /// задаем градиент контейнеру, его свойство color уходит
        //       /// на второй план.
        //
        //       begin: Alignment.topCenter, // Свойство, указывающее начало градиента.
        //       // Принимает в себя конструктор Alignment.
        //
        //       end: Alignment.bottomCenter, // Свойство, указывающее конец градиента.
        //       // Принимает в себя конструктор Alignment.
        //       stops: const [0.5, 0.6, 0.8, 0.9],
        //
        //       colors: const [ // Свойство, принимающие в себя перечень цветов. Цвета располагаются
        //         // слева направо.
        //
        //         Colors.deepPurpleAccent,
        //         Colors.blueAccent,
        //         Colors.amber,
        //         Colors.lightBlueAccent
        //
        //       ],
        //
        //     ),
        //
        //    // color: Colors.blueGrey, // Свойство, отвечающее за цвет контейнера.
        //
        //     shape: BoxShape.rectangle, /// Свойствоб отвечающее за форму контейнера.
        //     /// Принимает в себя кнструкторы BoxShape(). В примере
        //     /// приведен конструктро прямоугольной формы контейнера.
        //
        //     border:
        //     // Border.all(width: 1.0, color:  Colors.black)
        //     Border.all(
        //         color: Colors.green,
        //         width: 5.0,
        //         style: BorderStyle.solid
        //     ),
        //     ),
        //   ),

        /// Создадим еще один контейнер, и поэкспериментируем со свойствами:

        // body: Container( // Свойство child не является обязательным, поэтому
        //   // можно оставить контейнер пустым.
        //   width: 100,
        //   height: 100,
        //   decoration: BoxDecoration(
        //     boxShadow: [BoxShadow(
        //       color: Colors.black,
        //       blurRadius: 3,
        //       offset: Offset(4, 5),
        //     ),],
        //     gradient: RadialGradient( // Этот тип градиента является радиальным.
        //       center: Alignment.center,
        //       colors: [
        //         Colors.red,
        //         Colors.orangeAccent,
        //         Colors.yellowAccent
        //       ],
        //     ),
        //     shape: BoxShape.circle, // Конструктор, создающий круглый контейнер.
        //     border: Border.all( // В случае, если контейнер круглый, нам необходимо
        //       // задавать рамку одинаковую со всех сторон, иначе может возникнуть ошибка.
        //       width: 2,
        //       color: Colors.red,
        //
        //     ),
        //   ),
        // ),

        // Рассмотрим еще один пример:

        body: Container(
          width: 150,
          height: 300,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
              color: Colors.black,
              blurRadius: 3,
              offset: Offset(4, 5),
            ),],
            gradient: LinearGradient( // Этот тип градиента является радиальным.
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: const [
                Colors.teal,
                Colors.green,
                Colors.greenAccent,
              ],
            ),
            borderRadius: BorderRadius.circular(40), // Скругление углов контейнера
            // также требует установки одинаковых рамок со всех сторон.
            border: Border.all( // В случае, если контейнер круглый, нам необходимо
              // задавать рамку одинаковую со всех сторон, иначе может возникнуть ошибка.
              width: 7,
              color: Colors.brown,

            ),
          ),
        ),
        ),
      );
  }
}


