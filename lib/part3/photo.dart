import 'package:flutter/material.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';

import '../constants/constant_values.dart';
import 'hand_drawn2.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(
        user: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 9, bottom: 12),
              child: BB(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 9, bottom: 23),
              child: Text1(
                text: "Оформление\nОСАГО",
                fontWeight: FontWeight.w600,
                fonSize: 32,
                textAlign: TextAlign.start,
              ),
            ),
            D(),
            const SizedBox(height: 16),
            const Text1(
              text: "Отправка сканов",
              fontWeight: FontWeight.w600,
              fonSize: 20,
            ),
            const SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13), color: white2),
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 40,
                        width: 24,
                        child: Image.asset("images/camera.png"),
                      ),
                      const SizedBox(width: 12),
                      const Text1(
                        text: "Паспорт",
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                        height: 1.3,
                      ),
                      const SizedBox(width: 200),
                      Icon(
                        arrowRight,
                        color: const Color(0xFF030D45),
                      )
                    ],
                  )),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13), color: white2),
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 40,
                        width: 24,
                        child: Image.asset("images/camera.png"),
                      ),
                      const SizedBox(width: 12),
                      const Text1(
                        text: "Водительские права",
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                        height: 1.3,
                      ),
                      const SizedBox(width: 106),
                      Icon(
                        arrowRight,
                        color: const Color(0xFF030D45),
                      )
                    ],
                  )),
            ),
            const SizedBox(height: 24),
            const Button1(
              text: "Далее",
              page: HandDrawn2(),
            ),
          ],
        ),
      ),
    );
  }
}
