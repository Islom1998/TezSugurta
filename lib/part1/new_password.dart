import 'package:flutter/material.dart';
import 'package:real_project/constants/constant_values.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';

import '../part3/home.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(
        user: true,
        iconColor: blue,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset("images/Ellipse 5.png"),
            ),
            const SizedBox(height: 25),
            const Text1(
              text: "Заявка принята",
              fontWeight: FontWeight.w600,
              fonSize: 24,
              height: 1.3,
            ),
            const SizedBox(height: 12),
            const Text1(
              text:
                  "Ваша заявка принята и уже находится в\nпути к нам на рассмотрение. Вы получите\nответ в ближайшее время",
              fontWeight: FontWeight.w400,
              fonSize: 16,
              opacity: 0.5,
            ),
            const SizedBox(height: 20),
            const Button1(
              text: 'На главную',
              page: Home(),
              backPreviousPage: false,
            )
          ],
        ),
      ),
    );
  }
}
