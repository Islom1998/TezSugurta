import 'package:flutter/material.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';
import 'package:real_project/part3/decor.dart';

import '../constants/constant_values.dart';
import '../part2/main_profile.dart';

class CostCalculation extends StatefulWidget {
  const CostCalculation({Key? key}) : super(key: key);

  @override
  State<CostCalculation> createState() => _CostCalculationState();
}

class _CostCalculationState extends State<CostCalculation> {
  bool count = false;

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
              const SizedBox(height: 12),
              const Text1(
                text: "Рассчитать стоимость ОСАГО",
                fontWeight: FontWeight.w600,
                fonSize: 32,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 25),
              Divider(
                thickness: 1,
                color: const Color(0xFF50639E).withOpacity(0.1),
                height: 0,
              ),
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
              Divider(
                thickness: 1,
                color: const Color(0xFF50639E).withOpacity(0.1),
                height: 0,
              ),
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
              Divider(
                thickness: 1,
                color: const Color(0xFF50639E).withOpacity(0.1),
                height: 0,
              ),
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
              Divider(
                thickness: 1,
                color: const Color(0xFF50639E).withOpacity(0.1),
                height: 0,
              ),
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
              const SizedBox(height: 32),
              count
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(colors: [
                          Color(0xFF29AB55),
                          Color(0xFF1DBD7A),
                        ]),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF2EC234).withOpacity(0.25),
                            offset: const Offset(0, 0),
                            blurRadius: 36,
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.1),
                            offset: const Offset(0, 8),
                            blurRadius: 40,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: const [
                          SizedBox(height: 25),
                          Text1(
                            text: "Стоимость страхования",
                            fontWeight: FontWeight.w400,
                            fonSize: 24,
                            textColor: Color(0xFFFAFDFA),
                          ),
                          SizedBox(height: 15),
                          Text1(
                            text: "96 000 сум",
                            fontWeight: FontWeight.w600,
                            fonSize: 32,
                            textColor: Color(0xFFFAFDFA),
                          ),
                          SizedBox(height: 25),
                          Button1(
                            text: "Перейти к оформлению",
                            page: Decor(),
                            backgroundColor: white1,
                            textColor: black1,
                          ),
                          SizedBox(height: 25),
                        ],
                      ),
                    )
                  : Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: blue,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.1),
                            offset: const Offset(0, 8),
                            blurRadius: 40,
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            count = true;
                          });
                        },
                        child: const Center(
                          child: Text1(
                            text: "Рассчитать ",
                            fonSize: 18,
                            fontWeight: FontWeight.w500,
                            textColor: white1,
                          ),
                        ),
                      ),
                    ),
              const SizedBox(height: 16),
              Center(
                child: count
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            count = false;
                          });
                        },
                        child: const Text1(
                          text: "Сбросить",
                          fontWeight: FontWeight.w400,
                          fonSize: 16,
                          opacity: 0.5,
                        ),
                      )
                    : TextButton(
                        onPressed: () {},
                        child: const Text1(
                          text: "У меня есть промо-код",
                          fontWeight: FontWeight.w400,
                          fonSize: 16,
                          opacity: 0.5,
                        ),
                      ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
