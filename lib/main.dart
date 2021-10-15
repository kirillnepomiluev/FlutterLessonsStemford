import 'package:flutter/material.dart';

void main() => runApp(Lessons());

/// На предыдущих уроках мы использовали только StatelessWidget(). У него был
/// существенный минус: при помощи него невозможно было создать никаких
/// динамических элементов, так как он не способен изменяться в процессе
/// работы приложения. Для того, чтобы создавать динамические элементы нам
/// понадобится новый тип виджета - StatefulWidget(). Его ключевое отличие
/// заключается в следующем: при работе со StatelessWidget() метод build,
/// который отвечает за отрисовку экрана приложения, срабатывал всего один
/// раз - при запуске приложения. При работе со StatefulWidget() у нас
/// появляется возможность многократно обращаться к методу build через
/// метод setState. При срабатывании метода setState, срабатывает метод
/// build, и экран перерисовывается.

class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() {
    return _LessonsState();
  }
}

class _LessonsState extends State<Lessons> {
  bool isClicked = false;

  /// Создадим переменную типа bool.



  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
      title: "Уроки Flutter",
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
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
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blueAccent),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.account_box,
                            size: 30,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
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
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blueAccent),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.edit,
                            size: 30,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
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
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blueAccent),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.timer_outlined,
                            size: 30,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
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
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blueAccent),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.settings,
                            size: 30,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
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
          title: const Text(
            "Органайзер",
          ),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          /// FloatingActionButton() -
          /// одна из нескольких типов кнопок в Flutter. Подробнее на свойствах
          /// и типах кнопок речь пойдет в следующих уроках, сейчас же, для
          /// демонстрации принципа действия StatefulWidget() мы воспользуемся
          /// лишь одним свойством - свойством onPressed, который отвечает за
          /// действие кнопки.

          onPressed: () {

            print("isClicked = $isClicked");
            setState(() {
              /// Нажатие на кнопку будет вызывать
              /// метод setState, который будет вызывать метод build, и экран
              /// будет перестраиваться. При этом, метод setState будет менять
              /// значение нашей переменной isClicked на противоположное.
              isClicked = !isClicked;

            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: "Аккаунт"),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Редактор"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
          ],
        ),
        body: Center(
          child: Container(
            child: Center(
              /// На данном этапе нам и понадобится созданная ранне переменная:
              /// в зависимости от её значения, метод build будет проводить
              /// различные построения. В нашем случае, эта переменная будет
              /// менять текст внутри контейнера. Добьемся мы этого при помощи
              /// тернарной операции:

              child: isClicked
                  ? const Text(
                      // При isClicked = true.
                      "   Переменная\nisClicked = true",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )
                  : const Text(
                      // При isClicker = false.
                      "   Переменная\nisClicked = false",
                      style: TextStyle(fontSize: 30, color: Colors.lightBlue),
                    ),
            ),
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: Colors.lightBlue,
              ),

              /// Введем еще одну небольную функцию: пусть при разных значениях
              /// isClicked контейнер окрашивается в разные цвета.

              color: isClicked
                  ? Colors.lightBlue // При isClicked = true.
                  : Colors.white70, // При isClicker = false.

              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}


class UserPage extends StatefulWidget {
  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold();
  }
}