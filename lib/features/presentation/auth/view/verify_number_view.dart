import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/features/presentation/auth/view/verify_opt_view.dart';

class VerifyNumberView extends StatelessWidget {
  const VerifyNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundWhite,
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
                    "Verify your number",
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
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColor.backgroundEnd,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: AppColor.border,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        Container(width: 200, height: 50),
                      ],
                    ),
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
                  SizedBox(height: 20),
                  Text(
                    'Resend confirmation code (1:23)',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',
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
}
