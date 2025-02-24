
import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier{
  ThemeMode color=ThemeMode.light;

  void SelectTheme(ThemeMode newcolor){
    if(color==newcolor){
      return;
    }
    color=newcolor;
    notifyListeners();
  }

}