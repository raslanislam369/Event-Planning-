
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLanguageProvider extends ChangeNotifier{


  String currentLanguage="en";

  void SelectLanguage(String newLanguage){
    if(currentLanguage==newLanguage){
      return;
    }
    currentLanguage=newLanguage;
    notifyListeners();
  }

}