import 'package:flutter/material.dart';
import 'package:real_project/constants/constant_values.dart';

import '../most_used_widgets/most_used_widgets.dart';

class Profile2 extends StatelessWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(user: true),
      body: SingleChildScrollView(
        child:
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
                    children: const [
                      BB(),
                      SizedBox(height: 16),
                      Text1(
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

      ),
    );
  }
}
