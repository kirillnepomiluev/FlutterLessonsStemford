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
          title: Text(
            "Урок 22",
          ),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Аккаунт"),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Редактор"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
          ],
        ),

        /// На данном уроке мы научимся:
        /// 1) Пользоваться виджетом Icon(), и его свойствами.
        /// 2) Добавлять собственные иконки.
        /// 3) Добавлять в приложение изображение из интернета.
        /// 4) Добавлять в приложение изображение из директории приложения.

        body: Align(
          alignment: Alignment.center,
          child: Icon( /// Виджет, позволяющий добавить в приложение иконки.


              Icons.remove_red_eye_outlined, /// Конструктор Icons. аналогично
            /// конструктору Colors. позволяет выбирать иконки из библиотеки
            /// Flutter.

              size: 70, // Свойство, задающее размер иконки.

              color: Colors.lightBlueAccent, // Свойство, задающее цвет иконки.

          ),
        ),

        /// Теперь рассмотрим пример, в котором научимся добавлять в приложение
        /// изображение из интернета.
        
        // body: Center( // Синтаксический сахар, иная форма записи виджета Align()
        //   // со значением Alignment.center.
        //
        //   child: Container(
        //     width: 200,
        //     height: 400,
        //     child: Image.network("https://cdn1.ozone.ru/multimedia/1037547238.jpg",
        //       /// Конструктор Image.network позволяет добавить в приложение
        //       /// изображение из интернета. Для этого, передаем в конструктор ссылку
        //       /// на изображение, указанную в ковычках.
        //
        //       fit: BoxFit.contain, /// Свойство, отвечающее за размещение
        //       /// изображения внутри родительского виджета, его размеры и
        //       /// пропорции. Принимает в себя конструкторы BoxFit.
        //
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
