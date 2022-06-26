import 'package:flutter/material.dart';
import 'package:real_project/constants/constant_values.dart';
import 'package:real_project/most_used_widgets/most_used_widgets.dart';
import 'package:real_project/part3/home.dart';

class Reg1 extends StatelessWidget {
  const Reg1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        mini: true,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        elevation: 0,
                        backgroundColor: white2,
                        child: Icon(
                          close,
                          color: black1,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 13),
                  const Text1(
                    text: "Регистрация",
                    fontWeight: FontWeight.w700,
                    fonSize: 32,
                  ),
                  const SizedBox(height: 12),
                  const Text1(
                    text: "Введите свои данные",
                    fontWeight: FontWeight.w400,
                    fonSize: 16,
                    opacity: 0.5,
                  ),
                  const SizedBox(height: 42),
                  const TextField1(
                    labelText: "Номер телефона",
                    number: true,
                  ),
                  const SizedBox(height: 12),
                  const TextField1(labelText: "Имя"),
                  const SizedBox(height: 12),
                  const TextField1(labelText: "Фамилия"),
                  const SizedBox(height: 12),
                  Button2(
                    text: "День рождения",
                    page: const Text(''),
                    arrowIcon: arrowRight,
                  ),
                  const SizedBox(height: 12),
                  const TextField1(
                    labelText: "Пароль",
                    obscureText: true,
                  ),
                  const SizedBox(height: 12),
                  const TextField1(
                    labelText: "Повторно введите пароль",
                    obscureText: true,
                  ),
                  const SizedBox(height: 24),
                  const Button1(
                    text: "Зарегестрироваться",
                    page: Home(),
                    backPreviousPage: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
