import 'package:eventplaning/Providers/appLanguageProvider.dart';
import 'package:eventplaning/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    var languageProvide=Provider.of<AppLanguageProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
              languageProvide.SelectLanguage("en");

              setState(() {

              });
            },
            child: languageProvide.currentLanguage=="en"?
                    selectedLanguage(AppLocalizations.of(context)!.english):
                    unSelectedLanguage(AppLocalizations.of(context)!.english),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              languageProvide.SelectLanguage("ar");
              setState(() {

              });
            },
            child: languageProvide.currentLanguage=="ar"?
            selectedLanguage(AppLocalizations.of(context)!.arabic):
            unSelectedLanguage(AppLocalizations.of(context)!.arabic),
          )
        ],
      ),
    );
  }

  Widget selectedLanguage(String language){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
        language,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color: Appcolor.primaryLight,),
        ),
        Icon(Icons.check,color: Appcolor.primaryLight,)
      ],
    );
  }
  Widget unSelectedLanguage(String language){
    return Text(
      language,
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
    );
  }
}
