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
            "Урок 21",
          ),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: "Аккаунт"),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Редактор"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
          ],
        ),
        body: const Center(
          child: Text(
            "Hello World!!!",
            // Есть много способов декорировать текста. Универсальный виджет,
            // отвечающий за стилизацию текстаявляется виджет TextStyle(),
            // передаваемый в свойство style/.

            style: TextStyle(
              // Свойство, отвечающее за стиль текста. Принимает в себя виджет TextStyle().

              fontSize: 30,
              // Свойство, отвечающее за размер шрифта. Принимает в себя вещественное число.

              fontWeight: FontWeight.bold,
              // Свойство, отвечающее за толщину текста. Принимает в себя конструкторы
              // FontWeight.

              fontStyle: FontStyle.italic,
              // Свойство, отвечающее за стиль текста. Принимает в себя конструкторы
              // FontStyle.

              decoration: TextDecoration.underline,
              // Свойство, отвечающее за декорирование текста. Принимает в себя
              // конструкторы TextDecoration.

              color: Colors
                  .deepPurple, // Свойство, отвечающее за цвет текста.
              // Принимает в себя цветовые виджеты.
            ),
          ),
        ),

        // body: Center(
        //   child: RichText(
        //     // В предыдущем примере мы научились декорировать текст.
        //     // Однако, стиль текста распространялся на весь текст. Что
        //     // если нам нужно стилизовать отдельный участок текста?
        //     // Для этого существует виджет RichText().
        //     // Он позволяет нам разбить текст на участки, и
        //     /// задавать стиль для каждого из них индивидуально.
        //
        //     text: const TextSpan(
        //       // Свойство, в которое помещается виджет TextSpan(),
        //       // содержащий фрагмент текста и его стиль.
        //
        //       style: TextStyle(
        //         // Сюда мы поместим стиль текста по умолчанию.
        //         fontSize: 30,
        //         fontWeight: FontWeight.bold,
        //         fontStyle: FontStyle.italic,
        //         decoration: TextDecoration.underline,
        //         color: Colors.deepPurple,
        //       ),
        //       children: [
        //         /// Свойство children содержит в себе дочерние виджеты.
        //         //  При этом дочерние виджеты помещаются в квадратные скобки.
        //         /// Теперь внутрь свойства children мы передадим еще несколько
        //         //   виджетов TextSpan(), в которых будут содержаться отдельные
        //         /// фрагменты текста, и стили для них. Если же мы не зададим
        //         //   для них уникальный стил, то они примут параметры, указанные
        //         /// выше.
        //
        //         TextSpan(
        //           // Первый TextSpan будет содержать слово Hello .
        //
        //           text: "Hello ",
        //           // Здесь в свойство text мы уже передаем
        //           //  непосредственно текст, над которым будут произвоодиться изменения.
        //
        //           style: TextStyle(
        //               fontWeight: FontWeight.normal,
        //               color: Colors.black,
        //               decoration: TextDecoration
        //                   .none), // Сделаем текст нормальной толщины,
        //           //    изменим цвет на черный и уберем нижнее подчеркивание.
        //         ),
        //
        //         TextSpan(
        //           text: "World",
        //           style: TextStyle(color: Colors.blueGrey), // Изменим цвет текста
        //           //     на синий.
        //         ),
        //
        //         TextSpan(
        //           text: "!!!",
        //           style: TextStyle(
        //               color: Colors.blue,
        //               fontStyle: FontStyle.normal,
        //               fontSize: 35,
        //               decoration: TextDecoration.none),
        //
        //           /// Изменим цвет
        //           //    на синий, уиерем курсив и подчеркивание, а также увеличиваем
        //           ///размер шрифта
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

/// В дальнейшем мы познакомимся подробнее с каждым из этих элементов.
