import 'package:flutter/material.dart';

class IslamiTheme {
  static Color primaryColor = Color(0xffB7935F);
  static Color primaryColorDark = Color(0xffFACC1D);
  static Color secColorDark = Color(0xff141A2E);
  static Color white = Color(0xccf8f8f8);
  static ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      iconTheme: IconThemeData(
        color: Colors.black
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
    ),
    textTheme: TextTheme(
        titleMedium:  TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500
        ),
      titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w600,
      ),titleSmall: TextStyle(
          color: Colors.black,
          fontSize: 20,
      )
    )
  );
  static ThemeData darkMode = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryColorDark,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      iconTheme: IconThemeData(
        color: Colors.white
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryColorDark,
    ),
    textTheme: TextTheme(
        titleMedium:  TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500
        ),
      titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600,
      ),titleSmall: TextStyle(
          color: Colors.white,
          fontSize: 20,
      )
    )
  );

}