import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//white color shades
const Color kWhite = Color(0xffffffff);
const Color kLightWhite = Color(0xffeff5f4);
const Color klighterWhite = Color(0xfffcfcfc);
//Grey color shades
const Color kGrey = Color(0xff9397a0);
const Color kLightGrey = Color(0xffa7a7a7);
//Blue color shades
const Color kBlue = Color(0xff5474fd);
const Color kLightBlue = Color(0xff83b1ff);
const Color kLighterBlue = Color(0xffc1d4f9);
const Color kDarkBlue = Color(0xff19202d);

//Fonts and it's types
final kPoppinsBold = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w700,
);

final kPoppinsSemibold = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w600,
);

final kPoppinsMedium = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w500,
);

final kPoppinsRegular = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w400,
);

//Border Radius
const double kBorderRadius = 16;

final kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: BorderSide.none,
);

const Color kBorderColor = Color(0xffeeeeee);
