import 'package:eventplaning/Providers/appThemeProvider.dart';
import 'package:eventplaning/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ThemeSheet extends StatefulWidget  {
   ThemeSheet({super.key});


  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {

    var themeProvide = Provider.of<AppThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {

              themeProvide.SelectTheme(ThemeMode.light);
              setState(() {

              });
            },
            child: themeProvide.color == ThemeMode.light
                ? selectedTheme(AppLocalizations.of(context)!.light)
                : unSelectedTheme(AppLocalizations.of(context)!.light),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              themeProvide.SelectTheme(ThemeMode.dark);
              setState(() {

              });
            },
            child: themeProvide.color == ThemeMode.dark
                ? selectedTheme(AppLocalizations.of(context)!.dark)
                : unSelectedTheme(AppLocalizations.of(context)!.dark),
          )
        ],
      ),
    );
  }

  Widget selectedTheme(String theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Appcolor.primaryLight,
          ),
        ),
        Icon(
          Icons.check,
          color: Appcolor.primaryLight,
        )
      ],
    );
  }

  Widget unSelectedTheme(String theme) {
    return Text(
      theme,
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
    );
  }
}
