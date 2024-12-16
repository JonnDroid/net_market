import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontSizes {
  static const double extraSmall = 12.0;
  static const double small = 14.0;
  static const double standard = 16.0;
  static const double large = 18.0;
  static const double extraLarge = 22.0;
  static const double doubleExtraLarge = 30.0;
}

class DefaultColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color darkGray = Color(0xffC1C1C1);
  static const Color gray = Color(0xff717171);

  static const Color primary = Color(0xff7A6EAE);
  static const Color secondary = Color(0xffB45A9B);
  static const Color textBodyColor = Color(0xff000000);
  static const Color subtextBodyColor = Color(0xff7C7C7C);

  static const Color cardColor = Color(0xffCACACA);
  static const Color circleBorder1 = Color(0xFF4CBACC);
  static const Color circleBorder2 = Color(0xFF77D28B);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: const Color(0xff7A6EAE),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(
          color: DefaultColors.secondary,
        ),
        unselectedLabelStyle: TextStyle(
          color: DefaultColors.textBodyColor,
        ),
        selectedIconTheme: IconThemeData(
          color: DefaultColors.secondary,
        ),
        unselectedIconTheme: IconThemeData(
          color: DefaultColors.textBodyColor,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.roboto(
          fontSize: FontSizes.small,
          color: DefaultColors.textBodyColor,
        ),
        bodyMedium: GoogleFonts.roboto(
          fontSize: FontSizes.standard,
          color: DefaultColors.textBodyColor,
        ),
        bodyLarge: GoogleFonts.roboto(
          fontSize: FontSizes.large,
          color: DefaultColors.textBodyColor,
        ),
        titleSmall: GoogleFonts.roboto(
          fontSize: FontSizes.small,
          color: DefaultColors.textBodyColor,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: GoogleFonts.roboto(
          fontSize: FontSizes.standard,
          color: DefaultColors.textBodyColor,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.roboto(
          fontSize: FontSizes.large,
          color: DefaultColors.textBodyColor,
          fontWeight: FontWeight.bold,
        ),
        labelSmall: GoogleFonts.roboto(
          fontSize: FontSizes.small,
          color: DefaultColors.textBodyColor,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: GoogleFonts.roboto(
          fontSize: FontSizes.standard,
          color: DefaultColors.textBodyColor,
          fontWeight: FontWeight.w600,
        ),
        labelLarge: GoogleFonts.roboto(
          fontSize: FontSizes.large,
          color: DefaultColors.textBodyColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
