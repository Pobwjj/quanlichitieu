import 'package:flutter/material.dart';
import '../theme/colors.dart';

class CustomCard extends StatelessWidget {
  final String icon;
  final String title;
  final String date;
  final String amount;
  final bool isIncome;

  const CustomCard({
    super.key,
    required this.icon,
    required this.title,
    required this.date,
    required this.amount,
    required this.isIncome,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon, width: 57),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: AppColors.darkText,
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              date,
              style: const TextStyle(
                color: AppColors.blueAccent,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: 1,
          height: 41,
          color: AppColors.primary,
        ),
        Text(
          amount,
          style: TextStyle(
            color: isIncome ? AppColors.darkText : AppColors.blueAccent,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
