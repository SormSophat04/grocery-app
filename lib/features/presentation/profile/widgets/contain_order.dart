import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/app_icon_size.dart';
import 'package:groceries_app/core/constants/app_size.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class ContainOrder extends StatelessWidget {
  const ContainOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.h48 * 2.2,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(color: AppColor.backgroundWhite),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Row(
              children: [
                Text(
                  'My Orders',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Image.asset(
                  'assets/icons/arrow_right.png',
                  height: AppSize.h16,
                  width: AppSize.h16,
                  color: AppColor.textGray,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppSize.h60 + AppSize.h8,
                width: AppSize.h60 + AppSize.h8,
                // color: Colors.lightBlueAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/my_order/wallet_s.png',
                      height: AppIconSize.xl,
                      width: AppIconSize.xl,
                    ),
                    SizedBox(height: AppSize.h4),
                    Text(
                      "Wallet",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: AppSize.h60 + AppSize.h8,
                width: AppSize.h60 + AppSize.h8,
                // color: Colors.lightBlueAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/my_order/package.png',
                      height: AppIconSize.xl,
                      width: AppIconSize.xl,
                    ),
                    SizedBox(height: AppSize.h4),
                    Text(
                      "Package",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: AppSize.h60 + AppSize.h8,
                width: AppSize.h60 + AppSize.h8,
                // color: Colors.lightBlueAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/my_order/delivery-struck.png',
                      height: AppIconSize.xxl,
                      width: AppIconSize.xxl,
                    ),
                    Text(
                      "Delivery",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: AppSize.h60 + AppSize.h8,
                width: AppSize.h60 + AppSize.h8,
                // color: Colors.lightBlueAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/my_order/user (2).png',
                      height: AppIconSize.xl,
                      width: AppIconSize.xl,
                    ),
                    SizedBox(height: AppSize.h4),
                    Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
