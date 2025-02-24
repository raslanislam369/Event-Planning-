import 'package:eventplaning/UI/Home/tabs/home/homeTab.dart';
import 'package:eventplaning/UI/Home/tabs/love/loveTab.dart';
import 'package:eventplaning/UI/Home/tabs/map/mapTab.dart';
import 'package:eventplaning/UI/Home/tabs/profile/profileTab.dart';
import 'package:eventplaning/utils/appColor.dart';
import 'package:eventplaning/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName="Home Page";
  HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs=[Hometab(),Maptab(),Lovetab(),Profiletab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.transparent),
          child: BottomAppBar(
            color: Theme.of(context).primaryColor,
            shape: CircularNotchedRectangle(),
            child: BottomNavigationBar(
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                currentIndex: selectedIndex,
                items: [
                  bottomNavigationBaritem(
                      index: 0, label: AppLocalizations.of(context)!.home, imageName: AppAssets.homeIcon),
                  bottomNavigationBaritem(
                      index: 1, label: AppLocalizations.of(context)!.map, imageName: AppAssets.mapIcon),
                  bottomNavigationBaritem(
                      index: 2, label: AppLocalizations.of(context)!.love, imageName: AppAssets.loveIcon),
                  bottomNavigationBaritem(
                      index: 3,
                      label: AppLocalizations.of(context)!.profile,
                      imageName: AppAssets.profileIcon)
                ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
          ),
          backgroundColor: Appcolor.primaryLight,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Appcolor.whiteColor, width: 4),
              borderRadius: BorderRadius.circular(40)),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    body: tabs[selectedIndex],
    );
  }

  BottomNavigationBarItem bottomNavigationBaritem({
    required int index,
    required String label,
    required String imageName,
  }) {
    return BottomNavigationBarItem(icon: Image.asset(imageName), label: label);
  }
}
