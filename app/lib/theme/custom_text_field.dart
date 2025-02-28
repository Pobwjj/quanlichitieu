import 'package:flutter/material.dart';
import '../theme/color_app.dart';
import '../theme/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final bool obscureText;
  final VoidCallback? onToggleVisibility;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hint,
    this.isPassword = false,
    this.obscureText = false,
    this.onToggleVisibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(label, style: AppTextStyles.inputLabel),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: AppColors.inputBackground,
            borderRadius: BorderRadius.circular(18),
          ),
          child: TextField(
            obscureText: obscureText,
            style: AppTextStyles.inputText,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppTextStyles.inputText.copyWith(
                color: AppColors.darkText.withOpacity(0.45),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 34,
                vertical: 14,
              ),
              border: InputBorder.none,
              suffixIcon:
                  isPassword
                      ? IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility_off : Icons.visibility,
                          color: AppColors.darkText.withOpacity(0.45),
                        ),
                        onPressed: onToggleVisibility,
                      )
                      : null,
            ),
          ),
        ),
      ],
    );
  }
}
