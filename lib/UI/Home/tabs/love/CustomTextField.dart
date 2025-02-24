import 'package:eventplaning/utils/appColor.dart';
import 'package:flutter/material.dart';

class Customtextfield extends StatefulWidget {
  Color? borderColor;
  String hintText;
  Widget? prefixIcon;
  bool sufixIcon;
  TextStyle? hintStyle;

  Customtextfield(
      {this.hintStyle,
      required this.hintText,
      this.borderColor,
      required this.sufixIcon,
      this.prefixIcon});

  @override
  State<Customtextfield> createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  bool secure=false;
  int x=0;

  @override
  Widget build(BuildContext context) {
    return TextFormField(obscureText: secure,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
            BorderSide(width: 2, color: widget.borderColor ?? Appcolor.primaryLight)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
              BorderSide(width: 2, color: widget.borderColor ?? Appcolor.primaryLight)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
              BorderSide(width: 2, color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
              BorderSide(width: 2, color: Colors.red)),
          hintText: widget.hintText,
          hintStyle: widget.hintStyle ??
              TextStyle(
                  color: Appcolor.primaryLight,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
          prefixIcon: widget.prefixIcon ??
              Icon(Icons.remove_red_eye_rounded,color: Colors.grey,),

          suffixIcon: widget.sufixIcon ? InkWell(onTap: () {
            if(x%2==0){
            secure=true;
            }
            else{
              secure=false;
            }
            x++;
            setState(() {

            });

          },child: Icon(Icons.lock,color: secure?Appcolor.primaryLight:Colors.grey,)):Text(""),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  BorderSide(width: 2, color: widget.borderColor ?? Colors.grey))),
    );
  }
}
