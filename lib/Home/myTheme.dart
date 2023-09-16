import 'package:flutter/material.dart';

class MyTheme{
  static Color blackColor = Color(0xff242424) ;
  static Color primarylight = Color(0xffB7935F);
  static Color primaryDark = Color(0xff141A2E);
  static Color whiteColor = Colors.white;
  static Color lightBeige = Color(0xffAD9B81);
  static Color yellowColor = Color(0xffFACC1D) ;



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
  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
              color: whiteColor),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              color: whiteColor,
              fontSize: 30,
              fontWeight: FontWeight.w700),
          titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: whiteColor,
          ),
          titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: yellowColor,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: yellowColor,
        unselectedItemColor: whiteColor,

      )





  );

}