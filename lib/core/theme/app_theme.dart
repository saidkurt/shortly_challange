import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shortly_challange/core/const/app_color.dart';

class AppTheme {
  static final ThemeData appThemeLight = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(primary: AppColors.bluePrint),
    ),
  );
  static final appThemeDark = ThemeData.dark();
}
