import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/constants/app_font_size.dart';
import 'package:groceries_app/core/constants/app_size.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/features/presentation/setting/view/setting_view.dart';

class ContainProfile extends StatelessWidget {
  const ContainProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.h60 * 2,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(color: AppColor.backgroundWhite),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/images/cat.png'),
          ),
          SizedBox(width: AppSize.w16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ronaldo',
                style: TextStyle(
                  fontSize: AppFontSize.s20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: AppSize.h4),
              Text(
                '093-637-388',
                style: TextStyle(
                  fontSize: AppFontSize.s12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () => Get.to(() => SettingView()),
            child: Image.asset(
              'assets/icons/setting.png',
              height: AppSize.h32,
              width: AppSize.h32,
            ),
          ),
        ],
      ),
    );
  }
}
