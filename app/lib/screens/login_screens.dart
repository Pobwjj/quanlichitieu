import 'package:flutter/material.dart';
import '../theme/color_app.dart';
import '../theme/app_text_styles.dart';
import '../theme/custom_text_field.dart';
import 'home_screens.dart'; // Import HomeScreen để điều hướng

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text("16:04", style: AppTextStyles.timeText),
                  Row(
                    children: [
                      //Image.network(
                      //   "https://cdn.builder.io/api/v1/image/assets/TEMP/0e39e1bf5c53acee2402359f5cbf38d5fcca000ab5e8e5d990d7582d08e4f3a6?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5",
                      //   width: 13,
                      //   height: 11,
                      // ),
                      // const SizedBox(width: 4),
                      // Image.network(
                      // "https://cdn.builder.io/api/v1/image/assets/TEMP/81f26c07e77532b2cb07333b02aef137ddaed39f5089dc0cd09b91f68003cfb5?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5",
                      // width: 17,
                      // height: 10,
                      //),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            Text("Xin chào", style: AppTextStyles.greeting),
            const SizedBox(height: 65),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.screenBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 90,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextField(
                        label: "tên đăng nhập hoặc email",
                        hint: "example@example.com",
                      ),
                      const SizedBox(height: 23),
                      CustomTextField(
                        label: "mật khẩu",
                        hint: "●●●●●●●●",
                        isPassword: true,
                        obscureText: _obscurePassword,
                        onToggleVisibility: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      const SizedBox(height: 102),
                      // Nút "đăng nhập"
                      ElevatedButton(
                        onPressed: () {
                          // Thêm logic xác thực đăng nhập ở đây (ví dụ: kiểm tra username/email và mật khẩu)
                          // Nếu thành công, điều hướng đến HomeScreen
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "đăng nhập",
                          style: AppTextStyles.loginButton.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 31),
                      Text(
                        "Quên mật khẩu?",
                        style: AppTextStyles.forgotPassword,
                      ),
                      const SizedBox(height: 25),
                      // Nút "Đăng kí"
                      ElevatedButton(
                        onPressed: () {
                          // Thêm logic đăng ký hoặc điều hướng đến màn hình đăng ký
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Chuyển đến màn hình đăng ký"),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Đăng kí",
                          style: AppTextStyles.loginButton.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      RichText(
                        text: TextSpan(
                          style: AppTextStyles.fingerprint,
                          children: [
                            TextSpan(text: "Use "),
                            TextSpan(
                              text: "fingerprint",
                              style: TextStyle(color: AppColors.linkBlue),
                            ),
                            TextSpan(text: " to access"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 28),
                      Text(
                        "hoặc đăng nhập với",
                        style: AppTextStyles.socialLoginText,
                      ),
                      const SizedBox(height: 17),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://img.icons8.com/?size=100&id=118468&format=png&color=000000",
                            width: 34,
                            height: 34,
                          ),
                          const SizedBox(width: 16),
                          Image.network(
                            "https://img.icons8.com/?size=100&id=17904&format=png&color=000000",
                            width: 34,
                            height: 34,
                          ),
                        ],
                      ),
                      const SizedBox(height: 28),
                      RichText(
                        text: TextSpan(
                          style: AppTextStyles.socialLoginText,
                          children: [
                            TextSpan(text: "Bạn chưa có tài khoản? "),
                            TextSpan(
                              text: "Đăng Kí",
                              style: TextStyle(color: Color(0xFF3299FF)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
