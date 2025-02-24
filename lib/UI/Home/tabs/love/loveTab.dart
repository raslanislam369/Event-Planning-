import 'package:eventplaning/UI/Home/tabs/love/CustomTextField.dart';
import 'package:eventplaning/utils/appColor.dart';
import 'package:flutter/material.dart';

class Lovetab extends StatelessWidget {
  const Lovetab({super.key});

  @override
  Widget build(BuildContext context) {
    var Height =MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 50),
      child: Column(
          children: [
            Customtextfield(sufixIcon: false,hintText: "Search for Event"),
            SizedBox(height: Height*0.02,),
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
                                  AssetImage("assets/images/favIcon.png",),
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
