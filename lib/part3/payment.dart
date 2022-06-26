import 'package:flutter/material.dart';
import 'package:real_project/part3/payment_completion.dart';

import '../constants/constant_values.dart';
import '../most_used_widgets/most_used_widgets.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(
        user: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 9, top: 25, bottom: 12),
              child: SizedBox(
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
            Divider(
              height: 0,
              thickness: 1,
              color: const Color(0xFF50639E).withOpacity(0.1),
            ),
            const SizedBox(height: 15),
            const Text1(
              text: "Выберите способ оплаты",
              fontWeight: FontWeight.w600,
              fonSize: 20,
            ),
            const SizedBox(height: 15),
            const SizedBox(height: 25),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: white2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text1(
                    text: "Стоимость страхования",
                    fontWeight: FontWeight.w500,
                    fonSize: 14,
                    height: 1.3,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Страхование",
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        fonSize: 14,
                        opacity: 0.5,
                      ),
                      Text1(
                        text: "96 000 сум",
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
                        text: "0 сум",
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
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Услуги",
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        fonSize: 14,
                        opacity: 0.5,
                      ),
                      Text1(
                        text: "10 000 сум",
                        fontWeight: FontWeight.w400,
                        fonSize: 14,
                        height: 1.3,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Итог",
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        fonSize: 16,
                      ),
                      Text1(
                        text: "106 000 сум",
                        fontWeight: FontWeight.w500,
                        fonSize: 16,
                        height: 1.3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Button1(
              text: "Перейти к оплате",
              page: PaymentCompletion(),
            ),
          ],
        ),
      ),
    );
  }
}
