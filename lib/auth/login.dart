import 'package:flutter/material.dart';
import 'package:notify/common/colors.dart';
import 'package:notify/common/customText.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top : MediaQuery.of(context).size.height * 0.10),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText("Let's Login", Colors.black, 32, customFontWeight: FontWeight.bold ),
                customText("and note your ideas", Colors.black, 16),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText("Email Address", Colors.black, 16 ,customFontWeight: FontWeight.bold),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // label: customText("Email", Colors.black, 16),
                          hintText: 'Example: abc@gmail.com',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText("Password", Colors.black, 16 , customFontWeight: FontWeight.bold),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // label: customText("Email", Colors.black, 16),
                          hintText: '********',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top : 10),
                    child: customText("Forgot Password", Color(violetBlue), 16  ,customDecoration : TextDecoration.underline)),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top : 30),
                  child: MaterialButton(
                    child: customText("Login" , Colors.white , 16 , customFontWeight: FontWeight.w500) ,
                    onPressed: (){
                    },
                    color: Color(violetBlue) ,
                    height: 54,
                    minWidth: 343,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                  ),
                ),

              ],
            ),
            Container(
                child: customText("Don't have an account ? Register here", Color(violetBlue), 16)),
          ],
        ),
      ),
    );
  }
}
