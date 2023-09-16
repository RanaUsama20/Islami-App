import 'package:flutter/material.dart';

class MyTheme{
  static Color blackColor = Color(0xff242424) ;
  static Color primarylight = Color(0xffB7935F);
  static Color whiteColor = Colors.white;
  static Color lightBeige = Color(0xffAD9B81);


  static ThemeData lightTheme = ThemeData(
    primaryColor: primarylight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
          color: blackColor),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            color: blackColor,
            fontSize: 30,
            fontWeight: FontWeight.w700),
          titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: blackColor,
          ),
          titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: blackColor,
          )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,

    )





  );
}