import 'package:flutter/material.dart';
import 'package:real_project/part1/new_password.dart';

import '../constants/constant_values.dart';
import '../most_used_widgets/most_used_widgets.dart';

class ForgotPassword3 extends StatelessWidget {
  const ForgotPassword3({Key? key}) : super(key: key);

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
                        onPressed: () {},
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
                    text: "Новый пароль",
                    fontWeight: FontWeight.w700,
                    fonSize: 32,
                  ),
                  const SizedBox(height: 12),
                  const Text1(
                    text: "Введите новый пароль",
                    fontWeight: FontWeight.w400,
                    fonSize: 16,
                    opacity: 0.5,
                  ),
                  const SizedBox(height: 42),
                  const TextField1(
                    labelText: "Новый пароль",
                    obscureText: true,
                  ),
                  const SizedBox(height: 12),
                  const TextField1(
                    labelText: "Подтвердите новый пароль",
                    obscureText: true,
                  ),
                  const SizedBox(height: 24),
                  const Button1(text: "Зарегестрироваться", page: NewPassword()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
