import 'package:flutter/material.dart';
import 'package:real_project/constants/constant_values.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';
import 'package:real_project/part1/profile.dart';
import 'package:real_project/part2/my_data1.dart';
import 'package:real_project/part2/profile2.dart';
import 'package:real_project/part2/setting1.dart';

import '../part3/home.dart';

class MainProfile extends StatelessWidget {
  const MainProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(
        appBarIcon: close,
        iconColor: white1,
        buttonColor: blue,
        navigation: true,
        page: const Home(),
        backPreviousPage: false,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      "images/Ellipse 34.png",
                    ),
                  ),
                  title: const Text1(
                    text: "Добро пожаловать",
                    fonSize: 16,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                  ),
                  subtitle: const Text1(
                    text: "Мухаммад Исмаилов",
                    fontWeight: FontWeight.w500,
                    fonSize: 16,
                    textAlign: TextAlign.start,
                  ),
                  trailing: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset("images/logout.png"),
                    ),
                  )),
            ),
            Divider(thickness: 1, color: white4.withOpacity(0.5)),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile2(),
                  ),
                );
              },
              child: ListTile(
                leading: Container(
                  margin: const EdgeInsets.only(left: 10, top: 0),
                  height: 30,
                  width: 20,
                  child: Image.asset("images/note.png"),
                ),
                title: const Text1(
                  text: "Оформленные ОСАГО",
                  fontWeight: FontWeight.w400,
                  fonSize: 16,
                  height: 1.3,
                  textAlign: TextAlign.start,
                ),
                trailing: Icon(arrowRight),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyData1(),
                  ),
                );
              },
              child: ListTile(
                leading: Container(
                  margin: const EdgeInsets.only(left: 10, top: 0),
                  height: 30,
                  width: 20,
                  child: Image.asset("images/Vector.png"),
                ),
                title: const Text1(
                  text: "Мои данные",
                  fontWeight: FontWeight.w400,
                  fonSize: 16,
                  height: 1.3,
                  textAlign: TextAlign.start,
                ),
                trailing: Icon(arrowRight),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Setting1(),
                  ),
                );
              },
              child: ListTile(
                leading: Container(
                  margin: const EdgeInsets.only(left: 10, top: 0),
                  height: 30,
                  width: 25,
                  child: Image.asset("images/setting.png"),
                ),
                title: const Text1(
                  text: "Настройки",
                  fontWeight: FontWeight.w400,
                  fonSize: 16,
                  height: 1.3,
                  textAlign: TextAlign.start,
                ),
                trailing: Icon(arrowRight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
