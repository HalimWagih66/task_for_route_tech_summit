import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_style.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,

    //appBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
    ),

    //text theme
    textTheme: TextTheme(
      displayLarge: boldStyle(),
      displayMedium: regularStyle(),
    ),

    //button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
    ),

    // text field
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
      ),

      //enabled Border
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
      ),

      //focused Border
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
      ),

      //error Border
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
      ),

      //hint text
      hintStyle: boldStyle(color: AppColors.grey, fontSize: 16),
    ),

    // text button Style ..
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          AppColors.grey,
        ),
        textStyle: MaterialStateProperty.all(
          boldStyle(color: AppColors.grey, fontSize: 16),
        ),
      ),
    ),
  );
}
