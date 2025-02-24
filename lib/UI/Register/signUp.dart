import 'package:eventplaning/UI/Home/Home.dart';
import 'package:eventplaning/UI/Register/LoginPage.dart';
import 'package:flutter/material.dart';

import '../../utils/appColor.dart';
import '../Home/tabs/love/CustomTextField.dart';
import 'Custombtn.dart';

class Signup extends StatefulWidget {
  static const String routeName="SignUp";

  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset("assets/images/Logo.png"),
            SizedBox(
              height: Height * 0.02,
            ),
            Customtextfield(
              sufixIcon: false,
              hintText: "Name",
              prefixIcon: Icon(Icons.person,color: Colors.grey,),
              borderColor: Colors.grey,
            ),
            SizedBox(
              height: Height * 0.02,
            ),
            Customtextfield(sufixIcon: false,
              prefixIcon: Icon(Icons.email,color: Colors.grey,),
              hintText: "Email",
              borderColor: Colors.grey,
            ),
            SizedBox(
              height: Height * 0.02,
            ),
            Customtextfield(sufixIcon: true,
              hintText: "Password",
              prefixIcon: Icon(Icons.lock,color: Colors.grey,),

              borderColor: Colors.grey,
            ),
            SizedBox(
              height: Height * 0.02,
            ),
            Customtextfield(
              sufixIcon: true,
              hintText: "Re Password",

              borderColor: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Custombtn(
              function: homeNave,
              routeName: HomeScreen.routeName,
              text: "Create Account",
              icon: false,
              color: Appcolor.primaryLight,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have Account ? ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                InkWell(
                    onTap: () => Navigator.pushNamed(context, Loginpage.routeName),
                    child: Text(
                  "Login",
                  style: TextStyle(
                      color: Appcolor.primaryLight,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void homeNave(){
    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
  }
}
