import 'package:flutter/material.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';

import '../constants/constant_values.dart';

class Setting2 extends StatefulWidget {
  const Setting2({Key? key}) : super(key: key);

  @override
  State<Setting2> createState() => _Setting2State();
}

class _Setting2State extends State<Setting2> {
  bool withSound = true;
  Color iconCheck = blue;
  Color iconDefault = white2;

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
                children: const [
                  BB(),
                  SizedBox(height: 16),
                  Text1(
                    text: "Уведомления",
                    fontWeight: FontWeight.w600,
                    fonSize: 20,
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: white2,
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    withSound = true;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text1(
                        text: "Со звуком",
                        fontWeight: FontWeight.w400,
                        fonSize: 16),
                    Icon(
                      Icons.check,
                      color: withSound ? iconCheck : iconDefault,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: white2,
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    withSound = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text1(
                        text: "Без звука",
                        fontWeight: FontWeight.w400,
                        fonSize: 16),
                    Icon(
                      Icons.check,
                      color: !withSound ? iconCheck : iconDefault,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
