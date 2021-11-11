import 'package:book_store/styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class BookTextStyle {
  static TextStyle logoLarge = GoogleFonts.montserrat(
    textStyle: TextStyle(
        color: BookFanColors.burgundy,
        fontSize: 30.0,
        fontWeight: FontWeight.bold),
  );
  static TextStyle heading_1 = GoogleFonts.montserrat(
    textStyle: TextStyle(
        color: BookFanColors.dark, fontSize: 28.0, fontWeight: FontWeight.bold),
  );
  static TextStyle heading_2 = GoogleFonts.montserrat(
    textStyle: TextStyle(
        color: BookFanColors.dark, fontSize: 22.0, fontWeight: FontWeight.bold),
  );
  static TextStyle heading_3 = GoogleFonts.montserrat(
    textStyle: TextStyle(
        color: BookFanColors.dark, fontSize: 12.0, fontWeight: FontWeight.bold),
  );
  static TextStyle bodyTextBlk = GoogleFonts.montserrat(
    textStyle: TextStyle(color: BookFanColors.dark, fontSize: 18.0),
  );
  static TextStyle homeTextWhite = GoogleFonts.montserrat(
    textStyle: TextStyle(color: BookFanColors.white, fontSize: 18.0),
  );
  static TextStyle reductionText = GoogleFonts.montserrat(
    textStyle: const TextStyle(color: Colors.red, fontSize: 18.0),
  );
  static TextStyle buttonText = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
  );
  static TextStyle catButtonText = GoogleFonts.montserrat(
    textStyle: TextStyle(
        color: BookFanColors.dark.withOpacity(0.5),
        fontSize: 12.0,
        fontWeight: FontWeight.normal),
  );
  static TextStyle catButtonTextWhite = GoogleFonts.montserrat(
    textStyle: TextStyle(
        color: BookFanColors.white,
        fontSize: 12.0,
        fontWeight: FontWeight.normal),
  );
  static TextStyle viewAllBtnText = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.grey, fontSize: 18.0, fontWeight: FontWeight.bold),
  );
  static TextStyle bookTitleSmall = GoogleFonts.montserrat(
    textStyle: TextStyle(color: BookFanColors.dark, fontSize: 16.0),
  );
  static TextStyle authorNameText = GoogleFonts.montserrat(
    textStyle: const TextStyle(color: Colors.grey, fontSize: 12.0),
  );
  static TextStyle authorNameDetailPgTXT = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w500),
  );
  static TextStyle synopsisText = GoogleFonts.montserrat(
    textStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
  );
  static TextStyle cardSmlText = GoogleFonts.montserrat(
    textStyle: const TextStyle(color: Colors.white, fontSize: 14.0),
  );
  static TextStyle formTexts = GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: BookFanColors.burgundy,
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
    ),
  );
  static TextStyle forgottenPswed = GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: BookFanColors.burgundy,
      fontSize: 10.0,
      fontWeight: FontWeight.bold,
    ),
  );
  static TextStyle categoryListText = GoogleFonts.montserrat(
    textStyle: TextStyle(
        color: BookFanColors.dark, fontSize: 18.0, fontWeight: FontWeight.w500),
  );
}
