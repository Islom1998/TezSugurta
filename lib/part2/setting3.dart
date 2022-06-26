import 'package:flutter/material.dart';

import '../constants/constant_values.dart';
import '../most_used_widgets/most_used_widgets.dart';

class Setting3 extends StatefulWidget {
  const Setting3({Key? key}) : super(key: key);

  @override
  State<Setting3> createState() => _Setting3State();
}

class _Setting3State extends State<Setting3> {
  bool languageRussian = true;
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
                    text: "Язык",
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
                    languageRussian = true;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text1(
                        text: "Язык", fontWeight: FontWeight.w400, fonSize: 16),
                    Icon(
                      Icons.check,
                      color: languageRussian ? iconCheck : iconDefault,
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
                    languageRussian = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text1(
                        text: "Ozbekcha",
                        fontWeight: FontWeight.w400,
                        fonSize: 16),
                    Icon(
                      Icons.check,
                      color: !languageRussian ? iconCheck : iconDefault,
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
