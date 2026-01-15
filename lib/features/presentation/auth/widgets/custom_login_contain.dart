import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/core/widgets/custom_text_field.dart';
import 'package:groceries_app/features/presentation/auth/view/sign_up_view.dart';

class CustomLoginContain extends StatelessWidget {
  const CustomLoginContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 458,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      decoration: BoxDecoration(
        color: AppColor.backgroundSecondary,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back!",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            "Sign in to your account",
            style: TextStyle(
              fontSize: 15,
              color: AppColor.textGray,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 27),
          CustomTextField(
            hintText: 'Enter your email',
            imageIcon: 'assets/icons/email.png',
            obscureText: false,
          ),
          SizedBox(height: 12),
          CustomTextField(
            hintText: 'Enter your password',
            imageIcon: 'assets/icons/lock.png',
            obscureText: true,
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Remember me",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColor.textGray,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Colors.lightBlueAccent,
                ),
              ),
            ],
          ),
          SizedBox(height: 27),
          CustomButton(
            imageIconRight: '',
            textButton: 'Login',
            imageIconLeft: '',
            backgroundColor: AppColor.primary,
            textColor: Colors.white,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account ?",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColor.textGray,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(width: 4),
              GestureDetector(
                onTap: () => Get.to(() => SignUpScreen()),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
