import 'package:flutter/material.dart';
import 'package:real_project/part1/forgot_password.dart';
import 'package:real_project/part3/home.dart';

import '../constants/constant_values.dart';
import '../most_used_widgets/most_used_widgets.dart';

class Enter extends StatelessWidget {
  const Enter({Key? key}) : super(key: key);

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
                    text: "Вход",
                    fontWeight: FontWeight.w700,
                    fonSize: 32,
                  ),
                  const SizedBox(height: 12),
                  const Text1(
                    text: "Введите данные для входа",
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
                  const TextField1(labelText: "Пароль", obscureText: true),
                  const SizedBox(height: 24),
                  const Button1(text: "Войти", page: Home(), backPreviousPage: false,),
                  const SizedBox(height: 275),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPassword1(),
                        ),
                      );
                    },
                    child: const Text1(
                      text: 'Забыли пароль',
                      fontWeight: FontWeight.w400,
                      fonSize: 18,
                      textColor: white3,
                    ),
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
