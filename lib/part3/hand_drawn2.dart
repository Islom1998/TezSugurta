import 'package:flutter/material.dart';
import 'package:real_project/part3/total.dart';

import '../constants/constant_values.dart';
import '../most_used_widgets/most_used_widgets.dart';
import '../part2/main_profile.dart';

class HandDrawn2 extends StatefulWidget {
  const HandDrawn2({Key? key}) : super(key: key);

  @override
  State<HandDrawn2> createState() => _HandDrawn2State();
}

class _HandDrawn2State extends State<HandDrawn2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(
        user: true,
        navigation: true,
        page: const MainProfile(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const BB(),
              const SizedBox(height: 12),
              const Text1(
                text: "Рассчитать стоимость ОСАГО",
                fontWeight: FontWeight.w600,
                fonSize: 32,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 25),
              D(),
              const SizedBox(height: 15),
              const Text1(
                text: "Тариф страхования",
                fontWeight: FontWeight.w600,
                fonSize: 20,
              ),
              const SizedBox(height: 12),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: white2,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Тип страховки",
                        fonSize: 16,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: white5,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              D(),
              const SizedBox(height: 25),
              const Text1(
                text: "Личные данные",
                fontWeight: FontWeight.w600,
                fonSize: 20,
              ),
              const SizedBox(height: 20),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Я гражданин РУз",
                        fonSize: 16,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                      ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Период страхования",
                        fonSize: 16,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                      ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Вы владелец автомобиля",
                        fonSize: 16,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                      ),
                      Icon(
                        Icons.crop_square_rounded,
                        color: white5,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              D(),
              const SizedBox(height: 25),
              const Text1(
                text: "Данные об авто",
                fontWeight: FontWeight.w600,
                fonSize: 20,
              ),
              const SizedBox(height: 20),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Регион регистрации",
                        fonSize: 16,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                      ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Тип авто",
                        fonSize: 16,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                      ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Количество допущенных водителей",
                        fonSize: 16,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                      ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Категория льгот, если имееются",
                        fonSize: 16,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: white5,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              D(),
              const SizedBox(height: 25),
              const Text1(
                text: "Страховые случаи",
                fontWeight: FontWeight.w600,
                fonSize: 20,
              ),
              const SizedBox(height: 15),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Было у Вас ДТП в течении года?",
                        fonSize: 16,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: white5,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Button1(
                text: "Далее",
                page: Total(),
              ),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
