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
          title: Text("Урок 22",
          ),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_box) , label: "Аккаунт"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Редактор"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label:"Поиск"),
        ],),

        /// Итак, мы научились создавать контейнеры и стилизовать их. Но что,
        /// если нам нужно расположить несколько контейнеров на одной странице?
        /// С этим нам помогут позиционные виджеты. Начнем изучение с виджетов
        /// Row() и Column(). Рассмотрим их по порядку:

        body: Container( // Поместим виджет Row() в свойство child виджета
          // Container().
          // height: double.infinity, // Конструктор double.infinity позволяет
          // задать максимально возможное число.

          child: Row( /// Виджет Row позволяет располагать несколько виджетов в
            /// строку. Ширина строки определяется свободным пространством на
            /// экране, а высота - высотой самого высокого виджета. Поэтому
            /// горизонталь - это главная ось строки, а вертикаль - побочная.
            /// Начинаются обе оси в левом верхнем углу экрана. Рассмотрим
            /// свойства виджета Row():

            mainAxisAlignment: MainAxisAlignment.spaceEvenly, /// Свойство,
            /// отвечающее за расположение виджетов на главной оси. Принимает
            /// в себя конструкторы MainAxisAlignment.

            crossAxisAlignment: CrossAxisAlignment.end, /// Свойство, отвечающее
            /// за расположение виджетов на побочной оси. Принимает в себя
            /// конструкторы CrossAxisAlignment.

            mainAxisSize: MainAxisSize.min, // Свойство, определяющее занимаемое
            // строкой место. Принимает в себя конструкторы MainAxisSize.

            children: [ // В свойство children передаются виджеты, помещаемые в
              // строку. Возьмем для примера контейнеры из предыдущего урока.

              Expanded( /// Виджет Expanded() позволяет распределять свободное
                /// пространство между виджетами. Например, если поместить один
                /// из виджетов в составе Row() в Expanded(), то он займет
                /// все свободное пространство, при этом не искажая размер
                /// виджетов, не помещенных в Expanded(). Но если в Expanded()
                /// помещено несколько элементов, то пространство будет
                /// распределяться пропорционально параметру flex, который
                /// указан внутри виджета Expanded(). Рассмотрим пример:

                flex: 1, /// Свойство, определяющее пропорциональную долю
                /// пространства, занимаемую виджетом.

                child: Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 5,
                      offset: Offset(5, 5),
                  ),],
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.deepPurpleAccent,
                        Colors.blueAccent,
                        Colors.lightBlueAccent
                      ],
                    ),
                    color: Colors.blueGrey,
                    shape: BoxShape.rectangle,
                    border:
                    Border(
                      bottom: BorderSide(
                        width: 4,
                        color: Colors.black,
                        ),
                      ),
                    ),
                  ),
              ),
                Expanded(
                  flex: 1,
                  child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 3,
                      offset: Offset(4, 5),
                    ),],
                    gradient: RadialGradient(
                      center: Alignment.center,
                      colors: [
                        Colors.red,
                        Colors.orangeAccent,
                        Colors.yellowAccent
                      ],
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Colors.red,
                    ),
                  ),
              ),
                ),
                Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    blurRadius: 3,
                    offset: Offset(4, 5),
                  ),],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.teal,
                      Colors.green,
                      Colors.greenAccent,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 2,
                    color: Colors.teal,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Теперь рассмотрим виджет Column():

        // body: Column( /// Виджет Row позволяет располагать несколько виджетов в колонку. Высота колонки определяется свободным пространством на экране,
        //   /// а ширина - шириной самого широкого виджета. Поэтому вертикаль - это главная ось колонки, а горизонталь - побочная. Начинаются обе
        //   /// оси в левом верхнем углу экрана. Рассмотрим свойства виджета Column():
        //   ///
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly, /// Свойство, отвечающее за расположение виджетов на главной оси. Принимает в себя
        //   /// конструкторы MainAxisAlignment.
        //
        //   crossAxisAlignment: CrossAxisAlignment.start, /// Свойство, отвечающее за расположение виджетов на побочной оси. Принимает в себя
        //   /// конструкторы CrossAxisAlignment.
        //
        //   children: [
        //
        //     Container(
        //       child: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //       ),
        //       width: 100,
        //       height: 150,
        //       decoration: BoxDecoration(
        //         boxShadow: [BoxShadow(
        //           color: Colors.black,
        //           blurRadius: 5,
        //           offset: Offset(5, 5),
        //         ),],
        //         gradient: LinearGradient(
        //           begin: Alignment.centerLeft,
        //           end: Alignment.centerRight,
        //           colors: [
        //             Colors.deepPurpleAccent,
        //             Colors.blueAccent,
        //             Colors.lightBlueAccent
        //           ],
        //         ),
        //         color: Colors.blueGrey,
        //         shape: BoxShape.rectangle,
        //         border:
        //         Border(
        //           bottom: BorderSide(
        //             width: 4,
        //             color: Colors.black,
        //           ),
        //         ),
        //       ),
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       decoration: BoxDecoration(
        //         boxShadow: [BoxShadow(
        //           color: Colors.black,
        //           blurRadius: 3,
        //           offset: Offset(4, 5),
        //         ),],
        //         gradient: RadialGradient(
        //           center: Alignment.center,
        //           colors: [
        //             Colors.red,
        //             Colors.orangeAccent,
        //             Colors.yellowAccent
        //           ],
        //         ),
        //         shape: BoxShape.circle,
        //         border: Border.all(
        //           width: 2,
        //           color: Colors.red,
        //         ),
        //       ),
        //     ),
        //     Container(
        //       width: 150,
        //       height: 100,
        //       decoration: BoxDecoration(
        //         boxShadow: [BoxShadow(
        //           color: Colors.black,
        //           blurRadius: 3,
        //           offset: Offset(4, 5),
        //         ),],
        //         gradient: LinearGradient( // Этот тип градиента является радиальным.
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //           colors: [
        //             Colors.teal,
        //             Colors.green,
        //             Colors.greenAccent,
        //           ],
        //         ),
        //         borderRadius: BorderRadius.circular(30),
        //         border: Border.all(
        //           width: 2,
        //           color: Colors.teal,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        ),
      );
  }
}


