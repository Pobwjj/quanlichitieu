import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  static const headerLarge = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
  );

  static const headerMedium = TextStyle(
    fontFamily: 'League Spartan',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.darkText,
  );

  static const amountLarge = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static const amountBlue = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.blueAccent,
  );
}
