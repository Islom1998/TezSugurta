import 'package:flutter/material.dart';

import '../constants/constant_values.dart';
import '../most_used_widgets/most_used_widgets.dart';
import 'forgot_password3.dart';

class ForgotPassword2 extends StatelessWidget {
  const ForgotPassword2({Key? key}) : super(key: key);

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
                    text: "Забыли пароль",
                    fontWeight: FontWeight.w700,
                    fonSize: 32,
                  ),
                  const SizedBox(height: 12),
                  const Text1(
                    text: "Введите проверочный код, который был\nотправлен на ваш номер",
                    fontWeight: FontWeight.w400,
                    fonSize: 16,
                    opacity: 0.5,
                  ),
                  const SizedBox(height: 42),
                  const TextField1(
                    labelText: "Проверочный код",
                  ),
                  const SizedBox(height: 24),
                  const Button1(text: "Далее", page: ForgotPassword3()),
                  const SizedBox(height: 275),
                  TextButton(
                    onPressed: () {
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text1(
                          text: 'Отправить заного',
                          fontWeight: FontWeight.w400,
                          fonSize: 18,
                          textColor: white3,
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          height: 18,
                          width: 18,
                          child: CircularProgressIndicator(
                            backgroundColor: black1.withOpacity(0.1),
                            color: blue,
                            strokeWidth: 2,
                          ),
                        ),
                      ],
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
