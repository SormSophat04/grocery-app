import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/core/widgets/custom_shipping_status.dart';
import 'package:groceries_app/features/presentation/cart/view/cart_payment_view.dart';
import 'package:groceries_app/features/presentation/setting/view/address/address_view.dart';
import 'package:groceries_app/features/presentation/setting/widgets/custom_my_address.dart';

class CartAddressView extends StatelessWidget {
  const CartAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Shipping Address', actionIcon: ''),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: CustomShippingStatus(
                        color2: true,
                        color3: false,
                        line2: false,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 6,
                      ),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => CustomMyAddress(
                        name: 'Home',
                        cardImage: 'assets/icons/pin.png',
                        phoneNumber: '099-432-8372',
                        address:
                            '2811 Crescent Day. LA Port California, United States 77571',
                        actionIcon: '',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 16,
              right: 16,
              child: CustomButton(
                onTap: () => Get.to(() => CartPaymentView()),
                imageIconRight: '',
                textButton: 'Next',
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
