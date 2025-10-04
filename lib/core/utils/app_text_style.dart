import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _textStyle(
    {required double fontSize,
    required FontWeight fontWeight,
    required Color color}) {
  return GoogleFonts.lato(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

// bold text style
TextStyle boldStyle({
  Color color = AppColors.white,
  double fontSize = 24,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: color,
  );
}

//regular text style
TextStyle regularStyle({
  Color color = AppColors.white,
  double fontSize = 24,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontWeight: FontWeight.normal,
    color: color,
  );
}
