import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class CustomSettingButton extends StatelessWidget {
  final String myAcc;
  final String icon;
  const CustomSettingButton({
    super.key,
    required this.myAcc,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            child: icon == '' ? null : Image.asset(icon, height: 24, width: 24),
          ),
          Text(
            myAcc,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColor.textBlack,
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/icons/arrow_rights.png',
            height: 16,
            width: 16,
            color: AppColor.textGray,
          ),
        ],
      ),
    );
  }
}
