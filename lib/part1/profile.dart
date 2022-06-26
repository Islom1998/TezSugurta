import 'package:flutter/material.dart';
import 'package:real_project/part1/enterence.dart';
import 'package:real_project/part1/registration.dart';
import '../constants/constant_values.dart';
import '../most_used_widgets/most_used_widgets.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(
        appBarIcon: close,
        iconColor: white1,
        buttonColor: blue,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 25),
             Text1(
              text: "Необходимо Войти\nили Зерегестрироваться",
              fontWeight: FontWeight.w500,
              fonSize: 26,
              textColor: black1,
              height: 1.3,
            ),
            SizedBox(height: 20),
            Button1(
              text: "Вход",
              backgroundColor: black1,
              height: 50,
              page: Enter(),
            ),
            SizedBox(height: 12),
            Button1(
              text: "Зарегестрироваться",
              height: 50,
              page: Reg1(),
            ),
          ],
        ),
      ),
    );
  }
}
