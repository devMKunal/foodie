import 'package:flutter/material.dart';
import 'package:foodie/core/constants/color_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class TextstyleConstants {
  TextstyleConstants._();

  static TextStyle s25w700c000000 = GoogleFonts.openSans(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: ColorConstants.c000000,
  );

  static TextStyle s30w700cFFFFFF = GoogleFonts.openSans(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: ColorConstants.cFFFFFF,
  );

  static TextStyle s20w700cFFFFFF = GoogleFonts.openSans(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: ColorConstants.cFFFFFF,
  );

  static TextStyle s16w400c000000 = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: ColorConstants.c000000,
  );

  static TextStyle s16w700cEC2578 = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: ColorConstants.cEC2578,
  );
}
