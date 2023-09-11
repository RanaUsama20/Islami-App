import 'package:flutter/material.dart';

class MyTheme{
  static Color blackColor = Color(0xff242424) ;
  static Color primarylight = Color(0xffB7935F);
  static Color whiteColor = Colors.white;

  static ThemeData lightTheme = ThemeData(
    primaryColor: primarylight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            color: blackColor,
            fontSize: 30,
            fontWeight: FontWeight.w700)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,

    )





  );
}