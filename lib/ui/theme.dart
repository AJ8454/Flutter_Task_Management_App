import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const kBluish = Color(0xFF4e5ae8);
const kYellow = Color(0xFFFFB746);
const kPink = Color(0xFFFF4667);
const kWhite = Color(0XFFFFFFFF);
const kDark = Color(0xFF424242);
const kBlackPitch = Color(0xFF121212);

class MyThemes {
  static final light = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: kBlackPitch,
      elevation: 0,
    ),
    brightness: Brightness.dark,
  );
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
    textStyle:  TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ?  Colors.grey[400]: Colors.grey,
    ),
  );
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
    textStyle:  TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ?  Colors.white: Colors.black,
    ),
  );
}
