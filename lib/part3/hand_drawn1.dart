import 'package:flutter/material.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';
import 'package:real_project/part3/hand_drawn2.dart';

import '../constants/constant_values.dart';

class HandDrawn1 extends StatefulWidget {
  const HandDrawn1({Key? key}) : super(key: key);

  @override
  State<HandDrawn1> createState() => _HandDrawn1State();
}

class _HandDrawn1State extends State<HandDrawn1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar1(
          user: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 9, top: 25, bottom: 12),
                  child: BB(),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 9, bottom: 25),
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
                    text: "Введите паспортные данные",
                    fontWeight: FontWeight.w600,
                    fonSize: 20),
                const SizedBox(height: 20),
                const TextField1(labelText: "Серия и номер пасспорта"),
                const SizedBox(height: 12),
                Button2(
                  text: "Дата выдачи паспорта",
                  page: const Text(''),
                  arrowIcon: arrowRight,
                ),
                const SizedBox(height: 12),
                const TextField1(labelText: "Кем был выдан"),
                const SizedBox(height: 25),
                D(),
                const SizedBox(height: 16),
                const Text1(
                    text: "Водительские права",
                    fontWeight: FontWeight.w600,
                    fonSize: 20),
                const SizedBox(height: 20),
                const TextField1(labelText: "Серия и номер пасспорта"),
                const SizedBox(height: 12),
                Button2(
                  text: "Дата выдачи паспорта",
                  page: const Text(''),
                  arrowIcon: arrowRight,
                ),
                const SizedBox(height: 12),
                const TextField1(labelText: "Кем был выдан"),
                const SizedBox(height: 25),
                const Button1(
                  text: "Далее",
                  page: HandDrawn2(),
                ),
                const SizedBox(height: 160),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
