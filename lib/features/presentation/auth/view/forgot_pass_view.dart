import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/core/widgets/custom_text_field.dart';
import 'package:groceries_app/features/presentation/auth/view/verify_opt_view.dart';

class ForgotPassView extends StatelessWidget {
  const ForgotPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: "Verify Number", actionIcon: ''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 140),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColor.textGray,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 40),

                  CustomTextField(
                    hintText: 'Enter your email',
                    imageIcon: 'assets/icons/email.png',
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                  ),

                  SizedBox(height: 20),
                  CustomButton(
                    onTap: () => Get.to(() => VerifyOptView()),
                    imageIconRight: '',
                    textButton: 'Next',
                    imageIconLeft: '',
                    backgroundColor: AppColor.primary,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
