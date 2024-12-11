import 'package:flutter/material.dart';
import '../common/colors.dart';
import '../common/constant.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/customText.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Color(violetBlue),
        child: Column(
          children: [
            Image.asset(IMAGE_PREFIX + "/splash1.png", height: MediaQuery.of(context).size.height * 0.65,),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top :8.0 , left: 50 , right: 50),
              child: customText("Your space to capture, organize, and inspire—welcome to your notify ", Colors.white , 16 , customTextAlign: TextAlign.center),),
            Container(
              margin: EdgeInsets.only(top : 30),
              child: MaterialButton(
                child: customText("Let's get started" , Color(violetBlue) , 16 , customFontWeight: FontWeight.w500) ,
                onPressed: (){
                },
                color: Colors.white,
                height: 54,
                minWidth: 343,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
