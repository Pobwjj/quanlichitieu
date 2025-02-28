import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/text_styles.dart';
import '../widgets/stats_card.dart';
import '../widgets/custom_card.dart';
import '../widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            _buildWelcomeSection(),
            _buildStatistics(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 32),
                decoration: const BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 33),
                    _buildSavingsGoalCard(),
                    _buildPeriodSelector(),
                    _buildTransactionsList(),
                    const BottomNavBar(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(37, 9, 11, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '16:04',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'League Spartan',
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/0e39e1bf5c53acee2402359f5cbf38d5fcca000ab5e8e5d990d7582d08e4f3a6',
                width: 13,
              ),

              const SizedBox(width: 4),
              Image.asset(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/81f26c07e77532b2cb07333b02aef137ddaed39f5089dc0cd09b91f68003cfb5?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
                width: 17,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(37, 40, 11, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Chào mừng bạn trở lại', style: AppTextStyles.headerLarge),
              Text('Chào buổi sáng!', style: AppTextStyles.headerMedium),
            ],
          ),
          Image.asset(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/6c372cca74099b757d4d300a54083a99e2712fc35be5e8f0a645d9b6f9c3959d?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
            width: 30,
          ),
        ],
      ),
    );
  }

  Widget _buildStatistics() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 41, 11, 0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('7,830.00 VND', style: AppTextStyles.amountLarge),
                SizedBox(height: 8),
                Text(
                  '30%',
                  style: TextStyle(color: AppColors.background, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(width: 1, height: 42, color: AppColors.background),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('-11,187.00 VND', style: AppTextStyles.amountBlue),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSavingsGoalCard() {
    return const StatsCard();
  }

  Widget _buildPeriodSelector() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 26),
      decoration: BoxDecoration(
        color: AppColors.background.withOpacity(0.8),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _periodButton('Ngày', false),
          _periodButton('Tuần', false),
          _periodButton('Tháng', true),
        ],
      ),
    );
  }

  Widget _periodButton(String text, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : AppColors.darkText,
          fontSize: 15,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }

  Widget _buildTransactionsList() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        children: const [
          CustomCard(
            icon:
                'https://cdn.builder.io/api/v1/image/assets/TEMP/4259dded5289d83b864a9d29e6381d79d4ac1fbb69357a401181e6f6f51da372?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
            title: 'Tiền Lương',
            date: '18:27 - 30 tháng 1',
            amount: '4,000,000 VND',
            isIncome: true,
          ),
          SizedBox(height: 24),
          CustomCard(
            icon:
                'https://cdn.builder.io/api/v1/image/assets/TEMP/1d36a2d09827f56372f2ed25cd46e162a178500cb60129f0d29a87aab717f8a6?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
            title: 'Thực phẩm',
            date: '17:00 - 24 tháng 1',
            amount: '-100,000 VND',
            isIncome: false,
          ),
          SizedBox(height: 24),
          CustomCard(
            icon:
                'https://cdn.builder.io/api/v1/image/assets/TEMP/a80589fb8bd56e01ad4040395fc03ded885de419c22f533cf39cfe7c104f0bd6?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5',
            title: 'Thuê',
            date: '8:30 - 15 tháng 1',
            amount: '-674,400 VND',
            isIncome: false,
          ),
        ],
      ),
    );
  }
}
