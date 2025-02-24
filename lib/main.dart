import 'package:eventplaning/Providers/appLanguageProvider.dart';
import 'package:eventplaning/Providers/appThemeProvider.dart';
import 'package:eventplaning/Providers/shared_performance.dart';
import 'package:eventplaning/UI/Home/Home.dart';
import 'package:eventplaning/UI/Register/LoginPage.dart';
import 'package:eventplaning/UI/Register/signUp.dart';
import 'package:eventplaning/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(providers: [
      ChangeNotifierProvider(
      create: (context) => AppLanguageProvider()),
    ChangeNotifierProvider(
        create: (context) => AppThemeProvider()),
  ],child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark=true;
    var languageProvide = Provider.of<AppLanguageProvider>(context);
    var themeProvide = Provider.of<AppThemeProvider>(context);




    if(themeProvide.color==themeProvide){
      isDark==false;
    }
    Shared_Performance.setPrefrence(languageProvide.currentLanguage, isDark);

    return MaterialApp(
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        Loginpage.routeName:(context)=>Loginpage(),
        Signup.routeName:(context)=>Signup(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: Loginpage.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvide.color,
      locale: Locale(languageProvide.currentLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
