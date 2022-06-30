// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constant_values.dart';

class AppBar1 extends StatelessWidget implements PreferredSizeWidget {
  AppBar1({
    Key? key,
    this.appBarIcon = Icons.close,
    this.iconColor = black1,
    this.buttonColor = white2,
    this.leading = false,
    this.page = const SizedBox(height: 0, width: 0),
    this.navigation = false,
    this.user = false,
    this.backPreviousPage = true,
  }) : super(key: key);

  final IconData appBarIcon;
  Color iconColor;
  Color buttonColor;
  bool leading;
  Widget page;
  bool navigation;
  bool user;
  bool backPreviousPage;

  // ignore: prefer_typing_uninitialized_variables
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: leading,
      toolbarHeight: 90,
      elevation: 0,
      backgroundColor: white1,
      centerTitle: false,
      title: Container(
        padding: const EdgeInsets.only(bottom: 15, top: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  fontFamily: 'Rubik',
                ),
                children: [
                  TextSpan(
                    text: 'Tez',
                    style: TextStyle(color: blue),
                  ),
                  TextSpan(
                    text: 'Sugurta',
                    style: TextStyle(color: black1),
                  ),
                ],
              ),
            ),
            FloatingActionButton(
              mini: true,
              elevation: 0,
              onPressed: () {
                navigation
                    ? (backPreviousPage
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => page),
                          )
                        : Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => page),
                            (Route<dynamic> route) => false,
                          ))
                    : Null;
              },
              backgroundColor: buttonColor,
              child: Center(
                child: user
                    ? SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("images/Vector.png"),
                      )
                    : Icon(appBarIcon),
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Divider(
          height: 0,
          thickness: 1,
          color: white4.withOpacity(0.5),
          indent: 16,
          endIndent: 16,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(90);
}

class Text1 extends StatelessWidget {
  const Text1({
    Key? key,
    required this.text,
    required this.fontWeight,
    required this.fonSize,
    this.textColor = black1,
    this.opacity = 1,
    this.height = 1,
    this.textAlign = TextAlign.center,
  }) : super(key: key);
  final String text;
  final double fonSize;
  final Color textColor;
  final FontWeight fontWeight;
  final double opacity;
  final double height;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fonSize,
        fontFamily: 'Rubik',
        fontWeight: fontWeight,
        color: textColor.withOpacity(opacity),
        height: height,
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  const Button1({
    Key? key,
    required this.text,
    this.textFontWeight = FontWeight.w500,
    this.textFontSize = 18,
    this.textColor = white1,
    this.height = 60,
    this.width = double.infinity,
    this.backgroundColor = blue,
    this.radius = 12,
    required this.page,
    this.backPreviousPage = true,
  }) : super(key: key);

  final String text;
  final FontWeight textFontWeight;
  final double textFontSize;
  final Color textColor;
  final double height;
  final double width;
  final Color backgroundColor;
  final double radius;
  final Widget page;
  final bool backPreviousPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 40,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          backPreviousPage
              ? Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                )
              : Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                  (Route<dynamic> route) => false,
                );
        },
        child: Center(
          child: Text1(
            text: text,
            fontWeight: textFontWeight,
            fonSize: textFontSize,
            textColor: textColor,
          ),
        ),
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  const Button2({
    Key? key,
    required this.text,
    this.textFontWeight = FontWeight.w400,
    this.textFontSize = 16,
    this.textColor = white1,
    this.height = 60,
    this.width = double.infinity,
    this.backgroundColor = white2,
    this.radius = 12,
    required this.page,
    required this.arrowIcon,
    this.iconColor = white5,
  }) : super(key: key);

  final String text;
  final FontWeight textFontWeight;
  final double textFontSize;
  final Color textColor;
  final double height;
  final double width;
  final Color backgroundColor;
  final double radius;
  final Widget page;
  final IconData arrowIcon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: ListTile(
        title: Text1(
          text: text,
          fontWeight: textFontWeight,
          fonSize: textFontSize,
          textAlign: TextAlign.start,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            arrowIcon,
            color: white5,
          ),
        ),
      ),
    );
  }
}

class TextField1 extends StatelessWidget {
  const TextField1({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    this.number = false,
  }) : super(key: key);

  final String labelText;
  final bool obscureText;
  final bool number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 60,
      child: number
          ? TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  labelText: labelText,
                  labelStyle: TextStyle(
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF333333).withOpacity(0.5),
                  ),
                  border: InputBorder.none),
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w400),
            )
          : TextFormField(
              obscureText: obscureText,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  labelText: labelText,
                  labelStyle: TextStyle(
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF333333).withOpacity(0.5),
                  ),
                  border: InputBorder.none),
              style: const TextStyle(
                fontSize: 16,
                fontFamily: "Rubik",
                fontWeight: FontWeight.w400,
              ),
            ),
    );
  }
}

class DropDownSheet extends StatefulWidget {
  DropDownSheet({
    Key? key,
    required this.text,
    required this.textColor,
  }) : super(key: key);
  String text;
  Color textColor;

  @override
  State<DropDownSheet> createState() => _DropDownSheetState();
}

class _DropDownSheetState extends State<DropDownSheet> {
  bool close = true;

  @override
  Widget build(BuildContext context) {
    return close
        ? Container(
            height: 60,
            width: 345,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: white2,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text1(
                      text: "ОСАГО от 22.05.2021",
                      fontWeight: FontWeight.w400,
                      fonSize: 18),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        close = false;
                      });
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: white6,
                    ),
                  ),
                ],
              ),
            ),
          )
        : Container(
            width: 345,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: white2,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text1(
                          text: "ОСАГО от 22.05.2021",
                          fontWeight: FontWeight.w400,
                          fonSize: 18),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            close = true;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_up,
                          color: blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text1(
                        text: "Статус",
                        fontWeight: FontWeight.w400,
                        fonSize: 14,
                        opacity: 0.5,
                      ),
                      Text1(
                        text: widget.text,
                        fontWeight: FontWeight.w400,
                        fonSize: 14,
                        textColor: widget.textColor,
                        height: 1.3,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Стоимость",
                        fontWeight: FontWeight.w400,
                        fonSize: 14,
                        opacity: 0.5,
                      ),
                      Text1(
                          text: '85 000 сум',
                          fontWeight: FontWeight.w400,
                          fonSize: 14)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Период страхования",
                        fontWeight: FontWeight.w400,
                        fonSize: 14,
                        opacity: 0.5,
                      ),
                      Text1(
                          text: '12 месяцев',
                          fontWeight: FontWeight.w400,
                          fonSize: 14)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text1(
                        text: "Дата начала страхования",
                        fontWeight: FontWeight.w400,
                        fonSize: 14,
                        opacity: 0.5,
                      ),
                      Text1(
                          text: '22.05.2021',
                          fontWeight: FontWeight.w400,
                          fonSize: 14)
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 15, right: 15, top: 30, bottom: 25),
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF3155C3),
                        Color(0xFF1D45BD),
                      ],
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Скачать PDF",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Rubik',
                              fontSize: 16,
                            ),
                          ),
                          WidgetSpan(
                            child: Icon(
                              Icons.download,
                              size: 19,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

class Stack1 extends StatelessWidget {
  const Stack1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Center(
        child: Stack(
          clipBehavior: Clip.none, fit: StackFit.expand,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 250,
            ),
            Positioned(
              right: 0,
              top: 20,
              child: SizedBox(
                height: 225,
                width: 170,
                child: Image.asset("images/Image2.png"),
              ),
            ), //Container
            Positioned(
              top: 25,
              left: 16,
              child: SizedBox(
                width: 215,
                height: 125,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Рассчитайте\nстоимость',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          fontFamily: 'Rubik',
                          height: 1.3,
                          color: black1,
                        ),
                      ),
                      TextSpan(
                        text: "\nОСАГО",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          fontFamily: 'Rubik',
                          height: 1.3,
                          color: blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 170,
              left: 16,
              child: SizedBox(
                width: 235,
                height: 55,
                child: Text(
                  'Оформите страховку\nна автомобиль\nпо выгодной цене',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF333333),
                  ),
                ),
              ),
            ), //Container
            //Container
          ], //<Widget>[]
        ), //Stack
      ), //Center
    );
  }
}

//Back Button
class BB extends StatelessWidget {
  const BB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: const Color(0xFFFAFAFA),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(width: 8),
            Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 16,
              color: white6,
            ),
            SizedBox(width: 8),
            Text1(
              text: "назад",
              fontWeight: FontWeight.w400,
              fonSize: 16,
              textColor: white6,
            ),
            SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}

//Divider
class D extends StatelessWidget {
  D({
    Key? key,
    this.color = blue2,
    this.opacity = 0.1,
  }) : super(key: key);

  Color color;
  double opacity;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      thickness: 1,
      color: color.withOpacity(opacity),
    );
  }
}

//DataPicker
class DataPicker extends StatefulWidget {
  DataPicker({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  State<DataPicker> createState() => _DataPickerState();
}

class _DataPickerState extends State<DataPicker> {
  DateTime selectedDate = DateTime.now();
  String d = '';
  String m = '';
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    d = selectedDate.day < 10 ? '0' : '';
    m = selectedDate.month < 10 ? '0' : '';
    String date =
        '$d${selectedDate.day}.$m${selectedDate.month}.${selectedDate.year}';
    return TextButton(
      onPressed: () {
        showDatePicker();
      },
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      child: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: white2,
        ),
        child: selected
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text1(
                    text: widget.text,
                    fontWeight: FontWeight.w400,
                    fonSize: 14,
                    opacity: 0.5,
                  ),
                  const SizedBox(height: 4),
                  Text1(text: date, fontWeight: FontWeight.w400, fonSize: 16)
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text1(
                    text: widget.text,
                    fontWeight: FontWeight.w400,
                    fonSize: 16,
                  ),
                  Icon(
                    arrowRight,
                    color: white5,
                  ),
                ],
              ),
      ),
    );
  }

  void showDatePicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: 300,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (value) {
                    if (value != selectedDate) {
                      setState(
                        () {
                          selectedDate = value;
                        },
                      );
                    }
                  },
                  initialDateTime: DateTime.now(),
                  minimumYear: 1900,
                  maximumYear: DateTime.now().year,
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    selected = true;
                    Navigator.pop(context);
                  });
                },
                child: const Text(
                  "done",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
