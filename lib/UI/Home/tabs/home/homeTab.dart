import 'package:eventplaning/UI/Home/tabs/home/event_Tabs.dart';
import 'package:eventplaning/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Hometab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> EventNameList = [
      AppLocalizations.of(context)!.all,
      AppLocalizations.of(context)!.sport,
      AppLocalizations.of(context)!.birthday,
      AppLocalizations.of(context)!.meeting,
      AppLocalizations.of(context)!.bookclub,
      AppLocalizations.of(context)!.workshop,
      AppLocalizations.of(context)!.gaming,
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.transparent),
        leadingWidth: 0,
        backgroundColor: Appcolor.primaryLight,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.welcomeBack,
                  style: TextStyle(
                    color: Appcolor.whiteColor,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Islam Raslan",
                  style: TextStyle(
                      color: Appcolor.whiteColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.sunny,
                    color: Appcolor.whiteColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Appcolor.whiteColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "En",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Appcolor.primaryLight),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 120,
            decoration: BoxDecoration(
                color: Appcolor.primaryLight,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      color: Appcolor.whiteColor,
                    ),
                    Text(
                      "Cairo , Egypt",
                      style: TextStyle(color: Appcolor.whiteColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                DefaultTabController(
                  length: EventNameList.length,
                  child: TabBar(
                      tabAlignment: TabAlignment.start,
                      indicatorColor: Colors.transparent,
                      dividerColor: Colors.transparent,
                      labelPadding: EdgeInsets.zero,
                      isScrollable: true,
                      tabs: EventNameList.map((eventName) {
                        return EventTabs(
                            eventName: eventName, isSelected: true);
                      }).toList()),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 17),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 220,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Appcolor.whiteColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "21",
                            style: TextStyle(
                                color: Appcolor.primaryLight,
                                fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text("Dec.",style: TextStyle(
                              color: Appcolor.primaryLight,
                              fontWeight: FontWeight.bold,fontSize: 14),),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Appcolor.whiteColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            "This is a Birthday Party ",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          )),
                          ImageIcon(
                            AssetImage("assets/images/heartIcon.png"),
                            color: Appcolor.primaryLight,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Appcolor.primaryLight),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("assets/images/birthday.png"),
                        fit: BoxFit.cover)),
              );
            },
            itemCount: 20,
          ))
        ],
      ),
    );
  }
}
