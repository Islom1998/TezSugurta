import 'package:flutter/material.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';
import 'package:real_project/part2/setting2.dart';
import 'package:real_project/part2/setting3.dart';

import '../constants/constant_values.dart';

class Setting1 extends StatefulWidget {
  const Setting1({Key? key}) : super(key: key);

  @override
  State<Setting1> createState() => _Setting1State();
}

class _Setting1State extends State<Setting1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(
        user: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 24, left: 10, bottom: 16),
              height: 68,
              width: 217,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
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
                  const SizedBox(height: 16),
                  const Text1(
                    text: "Настройки",
                    fontWeight: FontWeight.w600,
                    fonSize: 20,
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: white2),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Setting2(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Настройки",
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                        opacity: 0.5,
                      ),
                      Text1(
                        text: "Со звуком",
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: white2),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Setting3(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Язык приложения",
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                        opacity: 0.5,
                      ),
                      Text1(
                        text: "Русский",
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text1(
                  text: "Политика конфиденциальности",
                  fonSize: 14,
                  fontWeight: FontWeight.w400,
                  opacity: 0.5,
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
