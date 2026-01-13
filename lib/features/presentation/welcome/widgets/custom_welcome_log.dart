import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/core/widgets/custom_nav_bar.dart';
import 'package:groceries_app/features/presentation/auth/login_view.dart';
import 'package:groceries_app/features/presentation/auth/sign_up_view.dart';

class CustomWelcomeLog extends StatelessWidget {
  const CustomWelcomeLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 358,
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
            "Welcome",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
            style: TextStyle(
              fontSize: 15,
              color: AppColor.textGray,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 27),
          CustomButton(
            onTap: () => Get.to(() => CustomNavBar()),
            imageIconRight: '',
            textButton: 'Continue with Google',
            imageIconLeft: 'assets/icons/google.png',
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
          SizedBox(height: 12),
          CustomButton(
            onTap: () => Get.to(() => SignUpScreen()),
            imageIconRight: '',
            textButton: 'Create an account',
            imageIconLeft: 'assets/icons/user.png',
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
