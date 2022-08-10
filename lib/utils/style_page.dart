import 'package:flutter/material.dart';

Color baseColorBackgroundAndFont = Color.fromARGB(235, 42, 48, 53);
Color fontColor = Colors.white;
Color invisibleColor() {
  return const Color.fromARGB(0, 230, 13, 13);
}

TextStyle baseFontStyle(
    {double fontSize = 18,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration decoration = TextDecoration.none}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: fontColor,
    fontFamily: 'FiraCode',
    decoration: decoration,
  );
}

double marginPage(context) {
  var windowSize = MediaQuery.of(context).size.width;
  if (windowSize > 1080) {
    return 150.00;
  } else {
    return 10.00;
  }
}

Container whiteBoxContainer(Widget widget, BuildContext context,
    {double top = 10, double botoom = 10}) {
  return Container(
    color: baseColorBackgroundAndFont,
    padding: EdgeInsets.only(
        left: marginPage(context),
        right: marginPage(context),
        top: top,
        bottom: botoom),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: baseColorBackgroundAndFont,
      ),
      child: widget,
    ),
  );
}
