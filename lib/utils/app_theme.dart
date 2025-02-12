import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppTheme {
  static const Color primaryColor = Colors.blue;
  static const Color errorColor = Color(0xFFB00020);
  static const Color successColor = Color(0xFF4CAF50);

  // Shades of Neutral (based on neutral900 = 0xFF2E2E2E)
  static const Color neutral50 = Color(0xFFF9F9F9); // Lightest
  static const Color neutral100 = Color(0xFFF2F2F2);
  static const Color neutral200 = Color(0xFFE6E6E6);
  static const Color neutral300 = Color(0xFFCCCCCC);
  static const Color neutral400 = Color(0xFFB3B3B3);
  static const Color neutral500 = Color(0xFF999999);
  static const Color neutral600 = Color(0xFF808080);
  static const Color neutral700 = Color(0xFF666666);
  static const Color neutral800 = Color(0xFF4D4D4D);
  static const Color neutral900 = Color(0xFF2E2E2E); // Darkest

  static const double space4 = 4;
  static const double space6 = 6;
  static const double space8 = 8;
  static const double space12 = 12;
  static const double space16 = 16;
  static const double space24 = 24;
  static const double space32 = 32;

  static const lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineLarge: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  );

  static const darkTextTheme = TextTheme();

  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.blue,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: neutral50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(space8),
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: neutral50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(space12),
      ),
    ),
    cupertinoOverrideTheme: CupertinoThemeData(
      brightness: Brightness.light,
      
    )
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.blue,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );
  
}
