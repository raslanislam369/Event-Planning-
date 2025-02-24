import 'package:eventplaning/utils/appColor.dart';
import 'package:flutter/material.dart';

class AppTheme{

  static final ThemeData lightTheme=ThemeData(
    primaryColor: Appcolor.primaryLight,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Appcolor.primaryLight
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
        selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
        TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Appcolor.whiteColor),
        showUnselectedLabels: true
    ),

  );


  static final ThemeData darkTheme=ThemeData(


    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Appcolor.primaryDark
    ),
    primaryColor: Appcolor.primaryDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
        TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Appcolor.whiteColor),
        showUnselectedLabels: true
    ),
  );

}