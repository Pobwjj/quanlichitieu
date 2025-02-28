import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF363130),
            fontSize: 15,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 3),
        // Input field
        Container(
          height: 41,
          decoration: BoxDecoration(
            color: const Color(0xFFDFF7E2),
            borderRadius: BorderRadius.circular(18),
          ),
          child: TextField(
            obscureText: obscureText,
            keyboardType: keyboardType,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: Color(0xFF0E3E3E),
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Color(0xFF0E3E3E),
                //opacity: 0.45//,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              border: InputBorder.none,
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
