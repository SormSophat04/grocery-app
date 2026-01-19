import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/core/widgets/custom_text_field.dart';
import 'package:groceries_app/features/presentation/auth/view/login_view.dart';
import 'package:groceries_app/features/presentation/auth/view/verify_number_view.dart';

class CustomSignUpContain extends StatelessWidget {
  const CustomSignUpContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 522,
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
            "Create account",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            "Quickly create account",
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
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 12),
          CustomTextField(
            hintText: 'Enter phone number',
            imageIcon: 'assets/icons/phone.png',
            obscureText: false,
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 12),
          CustomTextField(
            hintText: 'Enter your password',
            imageIcon: 'assets/icons/lock.png',
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 27),
          CustomButton(
            onTap: () => Get.to(() => VerifyNumberView()),
            imageIconRight: '',
            textButton: 'Sign Up',
            imageIconLeft: '',
            backgroundColor: AppColor.primary,
            textColor: Colors.white,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account ?",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColor.textGray,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(width: 4),
              GestureDetector(
                onTap: () => Get.to(() => LoginScreen()),
                child: Text(
                  "Login",
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
