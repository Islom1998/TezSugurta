import 'package:flutter/material.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';
import 'package:real_project/part2/main_profile.dart';

import '../constants/constant_values.dart';

class MyData1 extends StatelessWidget {
  const MyData1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(user: true),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    title: Column(
                                      children: [
                                        const Text1(
                                          text:
                                              "Сохранить данные\nперед выходом?",
                                          fontWeight: FontWeight.w600,
                                          fonSize: 20,
                                        ),
                                        const SizedBox(height: 24),
                                        const Button1(
                                          text: "Сохранить",
                                          textFontSize: 16,
                                          height: 42,
                                          page: MainProfile(),
                                          backPreviousPage: false,
                                        ),
                                        const SizedBox(height: 12),
                                        Button1(
                                          text: "Не сохранять",
                                          textFontSize: 16,
                                          textColor: black1,
                                          backgroundColor:
                                              black1.withOpacity(0.05),
                                          height: 42,
                                          page: const MainProfile(),
                                          backPreviousPage: false,
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Container(
                            width: 105,
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
                                  text: "отмена",
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
                        text: "Мои данные",
                        fontWeight: FontWeight.w600,
                        fonSize: 20,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        "images/Ellipse 34.png",
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: white2,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text1(
                            text: "изменить фото",
                            fontWeight: FontWeight.w400,
                            fonSize: 16,
                            textColor: black1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: white2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text1(
                        text: "Номер телефона",
                        fontWeight: FontWeight.w400,
                        fonSize: 14,
                        opacity: 0.5,
                      ),
                      SizedBox(height: 5),
                      Text1(
                        text: "+998 99 551  44 68",
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                        opacity: 0.5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const TextField1(labelText: "Имя"),
                const SizedBox(height: 8),
                const TextField1(labelText: "Фамилия"),
                const SizedBox(height: 8),
                Button2(
                  text: "День рождения",
                  page: const Text(''),
                  arrowIcon: arrowRight,
                ),
                const SizedBox(height: 32),
                const Button1(
                  text: "Сохранить",
                  page: MainProfile(),
                  backPreviousPage: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
