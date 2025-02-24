import 'package:eventplaning/UI/Home/Home.dart';
import 'package:flutter/material.dart';

import '../../utils/appColor.dart';

class Custombtn extends StatelessWidget {
  Function function;
   String text;
  Color? color;
  bool icon;
  String routeName;
  Custombtn({required this.function,this.color,required this.text,required this.icon,required this.routeName});
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return MaterialButton(
      height: 56,
      minWidth: double.infinity,
      shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10)),
      onPressed: (){
        function();
      },
      color: color??Colors.red,
      child: icon?Row(
        children: [
          Icon(
            Icons.output_outlined,
            color: Appcolor.whiteColor,
          ),
          SizedBox(width: 10,),
          Text(text,style: TextStyle(fontSize: 20,color: Appcolor.whiteColor,),)
        ],
      ):Text(text,style: TextStyle(fontSize: 20,color: Appcolor.whiteColor,),)
    );
  }
}
