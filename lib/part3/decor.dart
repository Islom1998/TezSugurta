import 'package:flutter/material.dart';
import 'package:real_project/part3/hand_drawn1.dart';
import 'package:real_project/part3/photo.dart';

import '../constants/constant_values.dart';
import '../most_used_widgets/most_used_widgets.dart';

class Decor extends StatelessWidget {
  const Decor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(
        user: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25, bottom: 12),
            child: SizedBox(
              height: 27,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: white2,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        arrowLeft,
                        color: white6,
                      ),
                      const Text1(
                        text: "назад",
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                        textColor: white6,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, bottom: 23),
            child: Text1(
              text: "Оформление\nОСАГО",
              fontWeight: FontWeight.w600,
              fonSize: 32,
              textAlign: TextAlign.start,
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: const Color(0xFF50639E).withOpacity(0.1),
            indent: 22,
            endIndent: 25,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 15, bottom: 28),
            child: Text1(
              text: "Отправка документов",
              fontWeight: FontWeight.w600,
              fonSize: 20,
              textAlign: TextAlign.start,
            ),
          ),
          Row(
            children: [
              Container(
                width: 175,
                margin: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: white2,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Photo(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset("images/qr-code-scan 1.png"),
                      ),
                      const SizedBox(height: 25),
                      const Text1(
                        text: "Отсканировать\nдокумент камерой",
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                        height: 1.3,
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              Container(
                width: 175,
                margin: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: white2,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HandDrawn1(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset("images/test 1.png"),
                      ),
                      const SizedBox(height: 25),
                      const Text1(
                        text: "Ввести все данные\nвручную",
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                        height: 1.3,
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
