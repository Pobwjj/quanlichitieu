import 'package:flutter/material.dart';
import '../theme/colors.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(31),
      ),
      child: Row(
        children: [
          _buildSavingsIcon(),
          const SizedBox(width: 20),
          Container(width: 1, height: 42, color: AppColors.background),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildRevenueSection(),
                const SizedBox(height: 10),
                _buildProgressBar(),
                const SizedBox(height: 12),
                _buildExpenseSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSavingsIcon() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.background, width: 2),
          ),
          child: Image.asset(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/77a2cdeb1844c2e1c9bfd0785ef0912fbdac92147460264cd900177c6da0be98?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
            width: 54,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'mục tiêu tiết kiệm',
          style: TextStyle(
            color: AppColors.darkText,
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildRevenueSection() {
    return Row(
      children: [
        Image.asset(
          'https://cdn.builder.io/api/v1/image/assets/TEMP/e5dc0de85637a976f69baad62ceeff41f54431322b86caa7bb3a61b5090f17a0?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
          width: 33,
        ),
        const SizedBox(width: 11),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Doanh thu tuần tr��ớc',
              style: TextStyle(
                color: AppColors.darkText,
                fontSize: 12,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              '4,000,000.00 VND',
              style: TextStyle(
                color: AppColors.darkText,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProgressBar() {
    return Image.asset(
      'https://cdn.builder.io/api/v1/image/assets/TEMP/66e84a135e597abcac2a7a90932536befda821baadf14998f12a92bc97aae30c?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
      width: 163,
    );
  }

  Widget _buildExpenseSection() {
    return Row(
      children: [
        Image.asset(
          'https://cdn.builder.io/api/v1/image/assets/TEMP/9a2f5fc819c67b22abbaca41dfd1242750a47e0ec102365c3e2e08b5eb623f90?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
          width: 21,
        ),
        const SizedBox(width: 17),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Thực phẩm tuần trước',
              style: TextStyle(
                color: AppColors.darkText,
                fontSize: 12,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              '-1,000,000.00 VND',
              style: TextStyle(
                color: AppColors.blueAccent,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
