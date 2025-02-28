import 'package:flutter/material.dart';
import '../theme/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(70),
          topRight: Radius.circular(70),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/f986e686e0b68fc8515e030b34813709ca78d27360c7b8a99c205e76d371ed3b?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
            width: 25,
          ),
          Image.asset(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/7d1e1d7d759af208dbefa151ba512bf2824c59bc288967580c02bc57f0b7a6ac?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
            width: 31,
          ),
          Image.asset(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/1cee74d492da9532f2dfd8f6d356d009fe2729f178edbc81d0923248fce051e0?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
            width: 33,
          ),
          Image.asset(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/313deabeb8005510b078ec4bd114c8183ce22706ae09001642073015d8cf981e?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
            width: 27,
          ),
          Image.asset(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/3ce56fc6b0e5a582ce3e63c052d2e9f75737e6665bfdf40b3c28e964373f1cf0?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
            width: 22,
          ),
        ],
      ),
    );
  }
}
