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
          title: const Text(
            "Урок 24",
          ),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Аккаунт"),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Редактор"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
          ],
        ),

        /// На предыдущем занятии мы рассмотрили варианты расположения нескольких
        /// виджетов в колонку и в строку. Сегодня же мы научимся:
        /// 1) Накладывать виджеты друг на друга
        /// 2) Менять расположение дочернего виджета внутри родительского
        /// 3) Задавать размеры виджетам, у которых нет полей, отвечающих за размер.
        /// 4) Создавать отступы у виджетов.

        body: Align( /// Виджет Align() позволяет задать положение дочернего
          /// виджета относительно родительского. В нашем случае родительский
          /// виджет - это Scaffold(), поэтому в нашем случае виджет Align()
          /// задает положение относительно всего экрана.

          alignment: Alignment.center, /// Свойство, определяющее положение
          /// дочернего виджета. Принимает в себя конструкторы Alignment.

          child: Stack(
            /// Виджет Stack() позволяет накладывать виджеты один на
            /// другой. При этом наложение будет происходить в порядке введения
            /// виджетов: самый первый будет снизу, далее - второй и т.д. Размер
            /// определяется максимальными размерами дочерних элементов.
            /// Рассмотрим свойства:

            alignment: Alignment.bottomLeft, // Одно из свойств, отвечающее за
            // позиционирование виджетов. Принимает в себя конструкторы Alignment.
            // Далее мы подробнее познакомимся с виджетом Alignment().

            children: [
              // В свойство children передаются виджеты, помещаемые в
              // строку. Возьмем для примера контейнеры из предыдущего урока.

              /// Для того, чтобы самостоятельно задать расположение виджетам в
              /// стэке, необходимо обернуть каждый его элемент в виджет
              /// Positioned()
              Container(
                width: 340,
                height: 340,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5,
                      offset: Offset(5, 5),
                    ),
                  ],
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
                  border: Border(
                    bottom: BorderSide(
                      width: 4,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              Align( // Виджет, позволяющий задавать положение виджета вручную.
                  alignment: Alignment.centerRight,
               // left: 20, // Свойство, отвечающее за отступ слева от края стэка.
               // right: 20,
              // top: 29, // Свойство, отвечающее за отступ сверху от края стэка.

                // right: 10, // Свойство, отвечающее за отступ справа от края стэка.

                // bottom: 10, // Свойство, отвечающее за отступ снизу от края стэка.
               // bottom: 50,
               // width: 100, /// Свойство, задающее ширину объекта. Срабатывает даже
                /// если у объекта имеется свой заданый размер

              // height: 60, /// Свойство, задающее ширину объекта. Срабатывает даже
               // если у объекта имеется свой заданый размер

                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                        offset: Offset(4, 5),
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.teal,
                        Colors.green,
                        Colors.greenAccent,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 3,
                      offset: Offset(4, 5),
                    ),
                  ],
                  gradient: const RadialGradient(
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
              Positioned(
                right: 20,
                top: 0,

                /// Мы добавили в стэк еще один контейнер, и задали ему положение:
                /// он должен находиться в верхнем правом углу.

                child: Padding( /// Виджет Padding() создает отступы от границ
                  /// дочернего виджета.

                  padding: const EdgeInsets.symmetric( vertical: 30, horizontal: 20), /// В свойство padding помещается
                  /// конструктор, отвечающий за характер отступа. В примере был
                  /// использован конструктор EdgeInserts.all(), который создает
                  /// равные отступы со всех сторон от дочернего виджета. Также
                  /// есть конструктор EdgeInserts.symmetric(), содержащий два
                  /// параметра - horizontal (отступ симметрично по горизонтали)
                  /// и vertical (отступ симметрично по вертикали). Также есть
                  /// конструктор EdgeInserts.only(), в котором четыре параметра:
                  /// bottom, top, left, right.

                  child: Container( /// Мы мидим, что несмотря на то, что контейнер
                    /// должен был оказаться втлевом верхнем углу, он имеет отступы
                    /// от края стэка, которые задаются виджетом Padding().

                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0x5BE91E63),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x34000000),
                          blurRadius: 3,
                          offset: Offset(4, 5),
                        ),
                      ],
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  const EdgeInsets.only(bottom: 10, left: 10),

                child: SizedBox( /// С помощью виджета SizedBox() можно задать
                  /// размеры дочернему виджету, даже при условии, что у
                  /// него не свойств, отвечающих за его размеры.

                  width: 100, // Поле, задающее ширину.

                  height: 60, // Поле, задающее высоту.

                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset(4, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
