import 'package:flutter/material.dart';
import 'package:real_project/constants/constant_values.dart';
import 'package:real_project/part2/main_profile.dart';

import '../most_used_widgets/most_used_widgets.dart';

class Profile2 extends StatelessWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(user: true),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 24, left: 10, bottom: 15),
                  height: 68,
                  width: 217,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 27,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainProfile(),
                              ),
                              (Route<dynamic> route) => false,
                            );
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
                        text: "Оформленные ОСАГО",
                        fontWeight: FontWeight.w600,
                        fonSize: 20,
                      ),
                    ],
                  ),
                ),
                DropDownSheet(
                  text: 'Оформление',
                  textColor: const Color(0xFFFD8127),
                ),
                const SizedBox(height: 8),
                DropDownSheet(
                  text: 'Отклонено',
                  textColor: const Color(0xFFFD2727),
                ),
                const SizedBox(height: 8),
                DropDownSheet(text: 'Доставлен', textColor: blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
