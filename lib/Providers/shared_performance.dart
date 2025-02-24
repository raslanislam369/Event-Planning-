import 'package:shared_preferences/shared_preferences.dart';

class Shared_Performance {
    static SharedPreferences? sharedPreferences;
    static void setPrefrence(String currentLanguage,isDark)async{
        sharedPreferences=await SharedPreferences.getInstance();
        sharedPreferences?.setString("language", currentLanguage);

        sharedPreferences?.setBool("dark", isDark);

    }

}