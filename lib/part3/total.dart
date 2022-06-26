import 'package:flutter/material.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';
import 'package:real_project/part3/payment.dart';

import '../constants/constant_values.dart';

class Total extends StatelessWidget {
  const Total({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(
        user: true,
      ),
      body: SingleChildScrollView(
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
                padding: EdgeInsets.only(left: 9, bottom: 15),
                child: Text1(
                  text: "Итог",
                  fontWeight: FontWeight.w600,
                  fonSize: 32,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: white2,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text1(
                      text: "Личные данные",
                      fontWeight: FontWeight.w500,
                      fonSize: 16,
                      height: 1.3,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Имя и Фамилия",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "Исаев Саид",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Дата рождения",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "22.09.1997",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Пол",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "Мужской",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text1(
                      text: "Данные осаго",
                      fontWeight: FontWeight.w500,
                      fonSize: 16,
                      height: 1.3,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Я гражданин РУз",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "Да",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Дата начало страхования",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "22.09.2021",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Период страхования",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "12 месяцев",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Вы владелец автомобиля",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "Да",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text1(
                      text: "Данные об авто",
                      fontWeight: FontWeight.w500,
                      fonSize: 16,
                      height: 1.3,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Регион регистрации",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "Узбекистан",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Тип авто",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "Легковой",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Количество допущенных\nводителей",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                          textAlign: TextAlign.start,
                        ),
                        Text1(
                          text: "2",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Категория льгот",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "Льгот нет",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text1(
                      text: "Страховые случаи",
                      fontWeight: FontWeight.w500,
                      fonSize: 16,
                      height: 1.3,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Было у Вас ДТП\nв течении года?",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                          textAlign: TextAlign.start,
                        ),
                        Text1(
                          text: "2",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text1(
                      text: "Пасспортные данные",
                      fontWeight: FontWeight.w500,
                      fonSize: 16,
                      height: 1.3,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Серия и номер пасспорта",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "AA68546348",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Дата выдачи паспорта",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "05.11.2020",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Кем был выдан",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "Xorazm UUB",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text1(
                      text: "Водительские права",
                      fontWeight: FontWeight.w500,
                      fonSize: 16,
                      height: 1.3,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Серия и номер",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "AA68546348",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Дата выдачи права",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "05.11.2020",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text1(
                          text: "Кем был выдан",
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          opacity: 0.5,
                        ),
                        Text1(
                          text: "Xorazm UUB",
                          fontWeight: FontWeight.w400,
                          fonSize: 14,
                          height: 1.3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Button1(
                text: "Далее",
                page: Payment(),
              ),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
