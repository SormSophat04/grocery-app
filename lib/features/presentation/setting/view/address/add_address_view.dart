import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/core/widgets/custom_text_field.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Add Address', actionIcon: ''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  spacing: 10,
                  children: [
                    CustomTextField(
                      hintText: 'Name',
                      imageIcon: 'assets/icons/user.png',
                      obscureText: false,
                    ),
                    CustomTextField(
                      hintText: 'Email address',
                      imageIcon: 'assets/icons/email.png',
                      obscureText: false,
                    ),
                    CustomTextField(
                      hintText: 'Phone number',
                      imageIcon: 'assets/icons/phone.png',
                      obscureText: false,
                    ),
                    CustomTextField(
                      hintText: 'Address',
                      imageIcon: 'assets/icons/pin.png',
                      obscureText: false,
                    ),
                    CustomTextField(
                      hintText: 'City',
                      imageIcon: 'assets/icons/user.png',
                      obscureText: false,
                    ),
                    CustomTextField(
                      hintText: 'Other information',
                      imageIcon: 'assets/icons/user.png',
                      obscureText: false,
                    ),
                    Container(height: 100, width: double.infinity),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              left: 0,
              right: 0,
              child: CustomButton(
                imageIconRight: '',
                textButton: 'Add Address',
                imageIconLeft: '',
                backgroundColor: AppColor.primaryDark,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
