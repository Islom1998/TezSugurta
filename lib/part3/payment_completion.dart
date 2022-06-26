import 'package:flutter/material.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';
import 'package:real_project/part3/home.dart';

class PaymentCompletion extends StatelessWidget {
  const PaymentCompletion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(
        user: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 15),
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset("images/Group 1862.png"),
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
              height: 1.2,
              opacity: 0.5,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Button1(
                text: "На главную",
                page: Home(),
                backPreviousPage: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
