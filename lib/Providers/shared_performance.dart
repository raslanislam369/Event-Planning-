import 'dart:ui';

import 'package:eventplaning/utils/appColor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared_Performance {
    static SharedPreferences? sharedPreferences;
    static void setPrefrence(String currentLanguage,isDark)async{
        sharedPreferences=await SharedPreferences.getInstance();
        sharedPreferences?.setString("language", currentLanguage);

        sharedPreferences?.setBool("dark", isDark);

    }
    static void getLang(String langkey){
        sharedPreferences?.getString(langkey);
    }
    static Color getTheme(String themekey){
        bool? isDark=sharedPreferences?.getBool(themekey)??false;

        if (isDark) {
          return Appcolor.primaryDark;
        } else {
          return Appcolor.primaryLight;
        }
    }

}