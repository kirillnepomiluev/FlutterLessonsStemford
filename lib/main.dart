import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String name = "";
int age = 0;
bool men = true;

SharedPreferences? prefs;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp2(),
    );
  }
}

class MyApp2 extends StatefulWidget {
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
    prefs = await SharedPreferences.getInstance();
    prefsLoaded = true;
    name = prefs!.getString("name") ?? "";
    age = prefs!.getInt("age") ?? 0;
    men = prefs!.getBool("men") ?? true;
    hasDataSaved = age == 0;
    setState(() {});
  }

  //метод срабатывает до построения экрана и вызывает загрузку данных
  @override
  void initState() {
    getSavedData();
    super.initState();
  }

  showMyDialog(String text) {
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
          child: Text("Данные персонажа загруженны успешно! n\  "
              "имя - $name, возраст - $age , пол ${men ? "мужской" : "женский"}")),
    );
  }

  Widget bodyWithoutSavedData() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://phonoteka.org/uploads/posts/2021-07/1625780946_2-phonoteka-org-p-zamok-v-gorakh-art-krasivo-2.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            width: double.infinity,
            child: Card(
              color: Color(0x5FFFFFFF),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Создание персонажа:",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
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
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Пол:"),
                        ),
                        Text("Мужской:"),
                        Checkbox(
                            value: men,
                            onChanged: (value) {
                              setState(() {
                                men = value ?? false;
                              });
                            }),
                        Text("Женский:"),
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
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        int _age = int.parse(ageController.text);
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
                      setState(() {});
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
