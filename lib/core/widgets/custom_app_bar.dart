import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String actionIcon;
  final VoidCallback? onTap;
  const CustomAppBar({
    super.key,
    required this.title,
    required this.actionIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      color: AppColor.backgroundWhite,
      padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Container(
              width: 24,
              height: 24,
              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 24,
              height: 24,
              decoration: actionIcon == ''
                  ? null
                  : BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(actionIcon),
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
