import 'package:flutter/material.dart';

void main() => runApp(Lessons());

class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  int x = 0;
  int y = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Уроки Flutter",
      home: Scaffold(
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: FloatingActionButton(
                  /// С данной кнопкой мы уже имели
                  /// дело, так как она входит в одно из полей виджета
                  /// Scaffold(). Рассмотри подробнее её свойства.

                  elevation: 20,

                  /// Свойство, меняющее уровень подъема кнопки
                  /// над плоскостью экрана.

                  backgroundColor: Colors.blue,

                  /// Свойство, отвечающее
                  /// за цвет самой кнопки.

                  foregroundColor: Colors.white,

                  /// Свойство, отвечающее за
                  /// цвет дочернего элемента кнопки.

                  splashColor: Colors.blueAccent,

                  /// Свойство, отвечающее за
                  /// цвет всплеска кнопки при нажатии.

                  onPressed: () {
                    setState(() {
                      /// Свойство, описывающее
                      /// действие, совершаемое при нажатии кнопки.

                      x = x + 1;
                    });
                  },

                  child: Center(
                    /// Свойство, содержащее дочерний элемент
                    /// кнопки.

                    child: Icon(
                      Icons.add,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 220,
                  height: 70,
                  child: ElevatedButton(
                    /// Следующий тип кнопки - это
                    /// ElevatedButton(). Рассмотрим его подробнее:

                    onPressed: () {
                      setState(() {
                        /// В данном типе кнопок
                        /// метод onPressed реагирует только на коротковременные
                        /// нажатия.

                        x = x + 1;
                      });
                    },

                    onLongPress: () {
                      setState(() {
                        /// У данного типа кнопок
                        /// присутствует еще один тип нажатия - долгое нажатие.
                        /// Зададим функцию и на этот тип нажатия:

                        y = y + 1;
                      });
                    },

                    style: ButtonStyle(
                      /// Свойство, отвечающее за стиль текста.

                      side: MaterialStateProperty.all(
                          BorderSide(width: 2, color: Colors.black)),

                      /// Свойство, отвечающее за рамку кнопки. Важно: большая
                      /// часть уже знакомых раннее виджетов помещается.

                      elevation: MaterialStateProperty.all(20),
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(Colors.redAccent),

                      /// Свойство, отвечающее за цвет всплеска кнопки при
                      /// нажатии.

                      textStyle: MaterialStateProperty.all(TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                      )),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(Icons.shopping_basket),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text("Добавить в корзину"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: IconButton(

                    /// Третий тип кнопок - IconButton().

                    iconSize: 40,

                    /// Свойство, отвечающее за размер иконки.

                    color: Colors.deepPurple,
                    splashRadius: 30,
                    // Свойство, отвечающее за радиус всплеска,
                    // появляющегося при нажатии на кнопку.

                    splashColor: Colors.purpleAccent,
                    onPressed: () {
                      setState(() {
                        x = x + 1;
                      });
                    },
                    icon: Icon(
                        Icons.timer_outlined) // Свойство, содержащее в себе
                    // иконку
                    ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextButton(
                  // Последний тип кнопок - TextButton()
                  onPressed: () {
                    setState(() {
                      x = x + 1;
                    });
                  },
                  onLongPress: () {
                    setState(() {
                      y = y + 1;
                    });
                  },
                  child: Text("Новая заметка"), // Свойство, содержащее в себе
                  // текст кнопки
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.teal),
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    )),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "Число нажатий: $x\nЧисло долгих нажатий: $y",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
