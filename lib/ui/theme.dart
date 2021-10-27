import 'package:flutter/material.dart';

const kBluish = Color(0xFF4e5ae8);
const kYellow = Color(0xFFFFB746);
const kPink = Color(0xFFFF4667);
const kWhite = Color(0XFFFFFFFF);
const kDark = Color(0xFF424242);
const kBlackPitch = Color(0xFF121212);

class MyThemes {
  static final light = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: kYellow,
    ),
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: kBlackPitch,
    ),
    brightness: Brightness.dark,
  );
}
