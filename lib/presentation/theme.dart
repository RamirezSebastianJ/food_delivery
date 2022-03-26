import 'package:flutter/material.dart';

class FoodDeliveryColors {
  static const orange = Color(0xFFFF4B3A);
  static const white = Color(0xFFFFFFFF);
  static const red = Color(0xFFFF460A);
  static const orangeGradient = Color(0xFFFF470B);
  static const grayBase = Color(0xFFF2F2F2);
}

final lighTheme = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: FoodDeliveryColors.orange),
    ),
    labelStyle: TextStyle(
      color: Colors.grey,
      fontFamily: 'SFProRoundedRegular',
    ),
    hintStyle: TextStyle(
      color: Colors.black,
      fontFamily: 'SFProRoundedBold',
      fontWeight: FontWeight.bold,
    ),
  ),
);
