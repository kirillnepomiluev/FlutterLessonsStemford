import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String name = "";
int age = 0;
bool men = true;

SharedPreferences? prefs;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp2(),
    );
  }
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  _MyApp2State createState() {
    return _MyApp2State();
  }
}

class _MyApp2State extends State<MyApp2> {
  String value = "Сохранение";
  bool prefsLoaded = false;
  bool hasDataSaved = false;

  TextEditingController ageController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  //метод загружает дынне из сохраненных настроек и обновлеят состояени
  Future<void> getSavedData() async {
      SharedPreferences.getInstance().then((prefs1 ) {
        prefsLoaded = true;
        name = prefs1.getString("name") ?? "";
        age = prefs1.getInt("age") ?? 0;
        men = prefs1.getBool("men") ?? true;
        hasDataSaved = age != 0;   //проверяем если возраст не указан, то считаем,
        // что данных нет.
        setState(() {});
    });
  }

  //метод срабатывает до построения экрана и вызывает загрузку данных
  @override
  void initState() {
    getSavedData();


    super.initState();
  }

  void showMyDialog(String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"))
          ],
          title: const Text("Ошибка"),
          content: Center(child: Text(text)),
        );
      },
    );
  }

  Widget bodyWithSavedData() {
    return Center(
      child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text("Данные персонажа загруженны успешно! n\  "
                "имя - $name, возраст - $age , пол ${men ? "мужской" : "женский"}"),
          )),
    );
  }

  Widget bodyWithoutSavedData() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://phonoteka.org/uploads/posts/2021-07/1625780946_2-phonoteka-org-p-zamok-v-gorakh-art-krasivo-2.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity,
            child: Card(
              color: const Color(0x5FFFFFFF),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Создание персонажа:",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Text("Имя:"),
                        ),
                        Expanded(
                            child: TextField(
                          controller: nameController,
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Пол:"),
                        ),
                        const Text("Мужской:"),
                        Checkbox(
                            value: men,
                            onChanged: (value) {
                              setState(() {
                                men = value ?? false;
                              });
                            }),
                        const Text("Женский:"),
                        Checkbox(
                            value: !men,
                            onChanged: (value) {
                              setState(() {
                                men = !(value ?? false);
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Возраст:"),
                        ),
                        Expanded(
                            child: TextField(
                          controller: ageController,
                          keyboardType: TextInputType.number,
                        )),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (nameController.text.length < 2) {
                        showMyDialog(
                            "Придумайте имя подлинее, хотя бы 2 буквы");
                        return;
                      }
                      int _age = 0;
                      try {
                         _age = int.parse(ageController.text);
                      } catch (e) {
                        debugPrint(e.toString());
                      }

                      if (_age < 1) {
                        showMyDialog(
                            "возраст не правильно задан.  не может быть 0 или отрицательное число");
                        return;
                      }
                      name = nameController.text;
                      age = _age;
                      prefs!.setString("name", name);
                      prefs!.setInt("age", age);
                      prefs!.setBool("men", men);

                      setState(() {
                        hasDataSaved = age != 0;
                      });
                    },
                    child: const Text("Сохранить персонажа"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("сохраняем и загружаем данные"),
          centerTitle: true,
        ),
        body: prefsLoaded
            ? (hasDataSaved ? bodyWithSavedData() : bodyWithoutSavedData())
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}
