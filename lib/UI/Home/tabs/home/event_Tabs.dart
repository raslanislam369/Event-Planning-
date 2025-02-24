import 'package:eventplaning/utils/appColor.dart';
import 'package:flutter/material.dart';

class EventTabs extends StatelessWidget {
  String eventName;
  bool isSelected;

  EventTabs({required this.eventName, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Appcolor.whiteColor : Colors.transparent,
        border: Border.all(color: Appcolor.whiteColor, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        eventName,
        style: TextStyle(
          color: isSelected ? Appcolor.primaryLight : Colors.white,
        ),
      ),
    );
  }
}
