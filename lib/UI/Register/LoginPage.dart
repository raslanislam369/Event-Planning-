import 'package:eventplaning/UI/Home/Home.dart';
import 'package:eventplaning/UI/Home/tabs/love/CustomTextField.dart';
import 'package:eventplaning/UI/Register/Custombtn.dart';
import 'package:eventplaning/UI/Register/signUp.dart';
import 'package:eventplaning/utils/appColor.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  static const String routeName="Login Page";
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: Height * 0.02,
            ),
            Image.asset("assets/images/Logo.png"),
            SizedBox(
              height: Height * 0.02,
            ),
            Customtextfield(
              prefixIcon: Icon(Icons.email,color: Colors.grey,),
              sufixIcon: false,
              hintText: "Email",
              borderColor: Colors.grey,
            ),
            SizedBox(
              height: Height * 0.02,
            ),
            Customtextfield(
              prefixIcon: Icon(Icons.lock,color: Colors.grey,),
              sufixIcon: true,
              hintText: "Password",
              borderColor: Colors.grey,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.topRight,
              child: InkWell(
                child: Text(
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Appcolor.primaryLight,
                      decoration: TextDecoration.underline),
                  "Forget Password?",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Custombtn(
              function: homeNave,
              routeName: HomeScreen.routeName,
              text: "Login",
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
                  "Don’t Have Account ? ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, Signup.routeName),
                    child: Text(
                  "Create Account",
                  style: TextStyle(
                      color: Appcolor.primaryLight,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  indent: 30,
                  endIndent: 20,
                  color: Appcolor.primaryLight,
                  thickness: 1.5,
                )),
                Text(
                  "or",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Expanded(
                    child: Divider(
                  indent: 20,
                  endIndent: 30,
                  color: Appcolor.primaryLight,
                  thickness: 1.5,
                )),
              ],
            ),
            SizedBox(height: Height*0.02,),
            MaterialButton(
              height: 56,
              minWidth: double.infinity,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Appcolor.primaryLight),
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},

              child: Text("Login With Google",style: TextStyle(fontSize: 20,color: Appcolor.primaryLight,),),
            )
          ],
        ),
      ),
    );
  }
  void homeNave(){
    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
  }
}
