import 'package:flutter/material.dart';
import 'color_app.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle get timeText => GoogleFonts.leagueSpartan(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle get greeting => GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
  );

  static TextStyle get inputLabel => GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.darkText,
  );

  static TextStyle get inputText => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.darkText,
  );

  static TextStyle get loginButton => GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
  );

  static TextStyle get forgotPassword => GoogleFonts.leagueSpartan(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
  );

  static TextStyle get fingerprint => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.secondaryText,
  );

  static TextStyle get socialLoginText => GoogleFonts.leagueSpartan(
    fontSize: 13,
    fontWeight: FontWeight.w300,
    color: AppColors.darkText,
  );
}
