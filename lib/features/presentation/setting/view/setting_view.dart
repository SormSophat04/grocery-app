import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/features/presentation/setting/view/address/address_view.dart';
import 'package:groceries_app/features/presentation/setting/view/payment/payment_view.dart';
import 'package:groceries_app/features/presentation/setting/view/transaction_view.dart';
import 'package:groceries_app/features/presentation/setting/widgets/custom_setting_button.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Settings', actionIcon: ''),
      ),
      body: Column(
        children: [
          // SizedBox(height: 16),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            color: AppColor.backgroundWhite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Account and Security",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 14),
                CustomSettingButton(
                  myAcc: 'My addresses',
                  icon: '',
                  onTap: () => Get.to(() => AddressView()),
                ),
                SizedBox(height: 11),
                CustomSettingButton(
                  myAcc: 'Payment methods',
                  icon: '',
                  onTap: () => Get.to(() => PaymentView()),
                ),
                SizedBox(height: 11),
                CustomSettingButton(
                  myAcc: 'Transaction',
                  icon: '',
                  onTap: () => Get.to(() => TransactionView()),
                ),
                SizedBox(height: 11),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            color: AppColor.backgroundWhite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Function",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 14),
                CustomSettingButton(myAcc: 'General', icon: ''),
                SizedBox(height: 11),
                CustomSettingButton(myAcc: 'Notification', icon: ''),
                SizedBox(height: 11),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.backgroundWhite,
                  ),
                  child: Center(child: Text('Switch account')),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.backgroundWhite,
                  ),
                  child: Center(child: Text('Logout')),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
