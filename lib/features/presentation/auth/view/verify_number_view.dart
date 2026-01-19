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
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.backgroundWhite,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 110,
                          height: 50,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            border: Border(
                              right: BorderSide(
                                color: AppColor.border,
                                width: 1,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'assets/images/cambodia.png',
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  '+855',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey,
                                  size: 24,
                                ),
                                // Image.asset(
                                //   'assets/images/cambodia.png',
                                //   width: 30,
                                //   height: 30,
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            // maxLength: 10,
                            decoration: InputDecoration(
                              hintText: '012 345 678',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
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
