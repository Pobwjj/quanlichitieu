import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/status_bar.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    // Set status bar to transparent
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        //statusBarColor: Colors.transparent,
        // statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xFF00D09E),
        child: Column(
          children: [
            const StatusBar(),
            Expanded(
              child: Stack(
                children: [
                  // Main content with rounded corners
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 155,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF1FFF3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 37),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 114),
                              _buildFormFields(),
                              _buildTermsText(),
                              const SizedBox(height: 20),
                              _buildSignupButton(),
                              _buildLoginPrompt(),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Header text positioned above the rounded container
                  Positioned(
                    top: 100,
                    left: 0,
                    right: 0,
                    child: Text(
                      'Tạo Tài Khoản',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF093030),
                        fontSize:
                            MediaQuery.of(context).size.width > 640 ? 30 : 26,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          label: 'tên đăng nhập',
          hintText: 'example@example.com',
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 33),
        CustomTextField(
          label: 'Email',
          hintText: 'example@example.com',
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 33),
        CustomTextField(
          label: 'số điện thoại',
          hintText: '+ 84 123456 789',
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(height: 33),
        CustomTextField(
          label: 'ngày sinh',
          hintText: 'DD / MM /YYY',
          keyboardType: TextInputType.datetime,
        ),
        const SizedBox(height: 33),
        CustomTextField(
          label: 'mật khẩu',
          hintText: '••••••••',
          obscureText: !_isPasswordVisible,
          suffixIcon: IconButton(
            icon: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: const Color(0xFF0E3E3E),
              size: 20,
            ),
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          ),
        ),
        const SizedBox(height: 33),
        CustomTextField(
          label: 'xác nhận mật khẩu',
          hintText: '••••••••',
          obscureText: !_isConfirmPasswordVisible,
          suffixIcon: IconButton(
            icon: Icon(
              _isConfirmPasswordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: const Color(0xFF0E3E3E),
              size: 20,
            ),
            onPressed: () {
              setState(() {
                _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTermsText() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(
            color: Color(0xFF4B4544),
            fontFamily: 'League Spartan',
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
          children: [
            TextSpan(text: 'By continuing, you agree to '),
            TextSpan(
              text: 'Terms of Use',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TextSpan(text: ' and '),
            TextSpan(
              text: 'Privacy Policy.',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignupButton() {
    return Container(
      width: 207,
      height: 45,
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00D09E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 0,
        ),
        child: const Text(
          'đăng kí',
          style: TextStyle(
            color: Color(0xFF093030),
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginPrompt() {
    return Padding(
      padding: const EdgeInsets.only(top: 11),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(
            color: Color(0xFF093030),
            fontFamily: 'League Spartan',
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          children: [
            TextSpan(text: 'Bạn đã có tài khoản? '),
            TextSpan(
              text: 'Đăng Nhập',
              style: TextStyle(color: Color(0xFF3299FF)),
            ),
          ],
        ),
      ),
    );
  }
}
