import 'package:flutter/material.dart';
import 'package:real_project/constants/constant_values.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';
import 'package:real_project/part2/main_profile.dart';

import 'cost_calculation.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FD),
      appBar: AppBar1(
        user: true,
        navigation: true,
        page: const MainProfile(),
      ),
      body: ListView(
        children: [
          const Stack1(),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white1,
            ),
            child: Column(
              children: [
                const Button1(
                  text: "Рассчитать стоимость",
                  page: CostCalculation(),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 18),
                    Container(
                      padding: const EdgeInsets.only(top: 30),
                      width: 25,
                      child: Image.asset("images/Vector 13 (Stroke).png"),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 25),
                        Text1(
                          text: "Бесплатная доставка",
                          fontWeight: FontWeight.w400,
                          fonSize: 16,
                        ),
                        SizedBox(height: 5),
                        Text1(
                          text:
                              "Расчёт стоимости и оформление\nполиса всего за 5 минут. Оплата\nонлайн или курьеру при доставке.",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                          height: 1.21,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 25),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text1(
              text: "Приемущества Tez Sugurta",
              fontWeight: FontWeight.w600,
              fonSize: 20,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            height: 205,
            padding: const EdgeInsets.only(top: 25),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 12),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white1.withOpacity(0.93),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFFFFF).withOpacity(0.04),
                            offset: const Offset(0, 16),
                            blurRadius: 40,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 26, bottom: 15),
                            height: 27,
                            child: Image.asset("images/laptop.png"),
                          ),
                          const Text1(
                            text: "Оформление без\nпохода в офис",
                            fontWeight: FontWeight.w500,
                            fonSize: 18,
                            textColor: Color(0xFF000000),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 8),
                          const Text1(
                            text:
                                "Расчёт стоимости и\nоформление полиса всего за\n5 минут.",
                            fontWeight: FontWeight.w400,
                            fonSize: 14,
                            opacity: 0.5,
                            textAlign: TextAlign.start,
                            height: 1.21,
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white1.withOpacity(0.93),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFFFFF).withOpacity(0.04),
                            offset: const Offset(0, 16),
                            blurRadius: 40,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 26, bottom: 15),
                            height: 27,
                            child: Image.asset("images/paperdelete.png"),
                          ),
                          const Text1(
                            text: "Находится всегда\nпри себе",
                            fontWeight: FontWeight.w500,
                            fonSize: 18,
                            textColor: Color(0xFF000000),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 8),
                          const Text1(
                            text:
                                "Расчёт стоимости и\nоформление полиса всего за\n5 минут.",
                            fontWeight: FontWeight.w400,
                            fonSize: 14,
                            opacity: 0.5,
                            textAlign: TextAlign.start,
                            height: 1.21,
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8, top: 40, right: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF3155C3),
                  Color(0xFF1D45BD),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0,
                  blurRadius: 36,
                  color: const Color(0xFF2E52C2).withOpacity(0.25),
                  offset: const Offset(0, 0),
                ),
                BoxShadow(
                  spreadRadius: 0,
                  blurRadius: 40,
                  color: const Color(0xFF000000).withOpacity(0.1),
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24, top: 24),
                  child: Text1(
                    text: "Оформи ОСАГО\nонлайн\nза 5 минут",
                    fontWeight: FontWeight.w700,
                    fonSize: 32,
                    textColor: white1,
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    const SizedBox(width: 25),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset("images/Group 1.png"),
                    ),
                    const SizedBox(width: 16),
                    const Text1(
                      text:
                          "Рассчитайте точную стоимость\nв онлайн калькуляторе",
                      fontWeight: FontWeight.w400,
                      fonSize: 15,
                      textColor: white1,
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const SizedBox(width: 25),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset("images/Group 2.png"),
                    ),
                    const SizedBox(width: 16),
                    const Text1(
                      text: "Вернем деньги, если вас что-то\nне устроит",
                      fontWeight: FontWeight.w400,
                      fonSize: 15,
                      textColor: white1,
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const SizedBox(width: 25),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset("images/Group 3.png"),
                    ),
                    const SizedBox(width: 16),
                    const Text1(
                      text: "Гарантируем качество",
                      fontWeight: FontWeight.w400,
                      fonSize: 15,
                      textColor: white1,
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 25),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset("images/Group 4.png"),
                    ),
                    const SizedBox(width: 16),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text1(
                        text: "Оформление без похода в офис",
                        fontWeight: FontWeight.w400,
                        fonSize: 15,
                        textColor: white1,
                        textAlign: TextAlign.start,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Button1(
                    text: "Оформить страховку",
                    page: Text(""),
                    backgroundColor: white1,
                    textColor: black1,
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
          Container(
            height: 516,
            margin: const EdgeInsets.only(left: 8, right: 8, top: 40),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white1,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.05),
                  spreadRadius: 0,
                  blurRadius: 40,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text1(
                    text: "Рассчитать\nстоимость ОСАГО",
                    fontWeight: FontWeight.w600,
                    fonSize: 32,
                    height: 1.3,
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white2,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        SizedBox(width: 8),
                        Text1(
                          text: "Дата начало страхования",
                          fonSize: 16,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white2,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        SizedBox(width: 8),
                        Text1(
                          text: "Период страхования",
                          fonSize: 16,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(width: 110),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: white5,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white2,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        SizedBox(width: 8),
                        Text1(
                          text: "Я гражданин РУз",
                          fonSize: 16,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(width: 142),
                        Icon(
                          Icons.crop_square_rounded,
                          color: white5,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white2,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        SizedBox(width: 8),
                        Text1(
                          text: "Вы владелец автомобиля",
                          fonSize: 16,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(width: 78),
                        Icon(
                          Icons.crop_square_rounded,
                          color: white5,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Button1(
                  text: "Рассчитать",
                  page: CostCalculation(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
