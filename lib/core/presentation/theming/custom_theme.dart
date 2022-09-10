import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/core/presentation/theming/custom_colors.dart';

class CustomTheme {
  static ThemeData get appTheme {
    return ThemeData(
      primaryColor: CustomColors.mediumOrange,
      scaffoldBackgroundColor: CustomColors.bgGray,
      appBarTheme: const AppBarTheme(
          backgroundColor: CustomColors.bgWhite,
          elevation: 0.0,
          foregroundColor: CustomColors.darkBlue,
          textTheme: TextTheme()),
      textTheme: TextTheme(
        headline5: const TextStyle(color: CustomColors.brandColor),
        bodyText2: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
        button: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: CustomColors.mediumOrange,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: CustomColors.mediumYellow,
        ),
      ),
    );
  }
}
