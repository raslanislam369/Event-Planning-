import 'package:eventplaning/Providers/appLanguageProvider.dart';
import 'package:eventplaning/Providers/appThemeProvider.dart';
import 'package:eventplaning/UI/Home/tabs/profile/Language_Sheet.dart';
import 'package:eventplaning/UI/Register/LoginPage.dart';
import 'package:eventplaning/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'theme_Sheet.dart';

class Profiletab extends StatefulWidget {
  const Profiletab({super.key});

  @override
  State<Profiletab> createState() => _ProfiletabState();
}

class _ProfiletabState extends State<Profiletab> {
  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);
    var Height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70),
            )),
        toolbarHeight: 170,
        backgroundColor: Appcolor.primaryLight,
        title: Row(
          children: [
            Image.asset(
              "assets/images/routeProfile.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Islam Raslan",
                  style: TextStyle(
                      color: Appcolor.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Text(
                  "eslamraslan369@gmail.com",
                  style: TextStyle(
                      color: Appcolor.whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.language,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                showLanguageBottomSheet();
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(color: Appcolor.primaryLight),
                    borderRadius: BorderRadius.circular(13)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      languageProvider.currentLanguage == "en"
                          ? AppLocalizations.of(context)!.english
                          : AppLocalizations.of(context)!.arabic,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Appcolor.primaryLight),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              AppLocalizations.of(context)!.theme,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                showThemeBottomSheet();
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(color: Appcolor.primaryLight),
                    borderRadius: BorderRadius.circular(13)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      themeProvider.color == ThemeMode.light
                          ? AppLocalizations.of(context)!.light
                          : AppLocalizations.of(context)!.dark,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Appcolor.primaryLight),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    )
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: Height * 0.25),
                child: MaterialButton(
                  height: 56,
                  minWidth: double.infinity,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Loginpage.routeName);
                  },
                  color: Colors.red,
                  child: Row(
                    children: [
                      Icon(
                        Icons.output_outlined,
                        color: Appcolor.whiteColor,
                      ),
                      SizedBox(width: 10,),
                      Text("Logout",style: TextStyle(fontSize: 20,color: Appcolor.whiteColor,),)
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageSheet(),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeSheet(),
    );
  }
}
