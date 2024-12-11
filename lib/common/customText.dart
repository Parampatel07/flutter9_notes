import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText(String message, dynamic customColor, double customFontSize ,
    {dynamic customFontWeight = FontWeight.normal , dynamic customTextAlign = TextAlign.start , customDecoration = TextDecoration.none}) {
  return Text(message,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
        color: customColor,
        fontSize: customFontSize,
            fontWeight: customFontWeight,
        decoration: customDecoration,
      ),
      ),
    textAlign: customTextAlign ,
  );
}
