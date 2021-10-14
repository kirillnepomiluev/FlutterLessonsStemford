import 'package:flutter/material.dart'; // Импорт библиотеки, содержащей основные
// инструменты flutter - виджеты.

/// Виджет - это физуальные и функциональные компоненты, из которых состоит приложение.
/// Все элементы в flutter являются виджетами.

void main() => runApp(Lessons());

class Lessons extends StatelessWidget {
  /// StatelessWidget() - это абстрактный класс
  /// который отвечает за создание статичного виджета. Статичный виджет - это виджет,
  /// который не будет менять своего состояния (например картинка, иконка, текст).

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Высокоуровневый виджет, отвечающий за создание графического интерфейса
      // приложения в стиле Material Design.

      title: "Название приложения",
      // В свойство title передается название приложения, которое будет
      // отображаться в названии страницы. Принимает в себя строку.

      home: Scaffold(
        // Высокоуровневый виджет, создающий шаблон страницы в стиле Material Design.



        backgroundColor: Colors.amber,
        // Свойство, отвечающее за цвет самой страницы.

        floatingActionButton: FloatingActionButton( backgroundColor: Colors.black,
          onPressed: () {},
        ),
        // Свойство, отвечающее за добавление кнопки. Принимает в себя виджет
        // FloatingActionButton().

        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        // Свойство, отвечающее за расположение кнопки на экране. Имеет
        // различные конструкторы.

        bottomNavigationBar: BottomNavigationBar(
          items: [
            // Свойство, отвечающее за добавление нижней навигационной панели.

            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Аккаунт"),
            // Элементы навигационной панели.

            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Редактор"),

           BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
          ],
        ),
        body: Text(
          // Свойство, содержащее в себе тело страницы. Принимает в себя
          // различные виджеты. Для примера, в поместим сюда виджет Text().

          "План урока:\n1) Понятие StatelessWidget()\n2) Виджет MaterialApp()\n3)"
              " Виджет Scaffold()\n4) Виджет Text()\n5) Виджет TextStyle()\n6)"
              " Виджет Color()",
        ),
        appBar: AppBar(
          // Свойство, отвечающее за наличие верхнего меню - аппбара. Принимает
          // в себя виджет AppBar().

          centerTitle: true,
          // Свойство, отвечающее за расположение заголовка аппбара по центру.
          // Принимает в себя true или false.

          title: Text(
            "Урок 20", // Свойство, отвечающее за заголовок аппбара. Принимает
            // в себя строку с текстом заголовка.
          ),

          backgroundColor: Colors.purple, // Свойство, отвечающее за цвет аппбара. Принимает
          // в себя виджет, содержащий цвет.
        ),// Свойство, содержащее в себе тело страницы. Принимает в себя различные виджеты. Для примера, в поместим сюда виджет Text().
      ),
    );
  }
}

/// В дальнейшем мы познакомимся подробнее с каждым из этих элементов.
