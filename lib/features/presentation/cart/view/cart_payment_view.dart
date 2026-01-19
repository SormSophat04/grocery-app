import 'package:flutter/material.dart';
import 'package:groceries_app/core/msg_dialog/order_success.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/core/widgets/custom_shipping_status.dart';
import 'package:groceries_app/features/presentation/cart/widgets/custom_payment_selection.dart';

class CartPaymentView extends StatefulWidget {
  const CartPaymentView({super.key});

  @override
  State<CartPaymentView> createState() => _CartPaymentViewState();
}

List<Map<String, String>> paymentMethods = [
  {'name': 'Money', 'icon': 'assets/icons/money.png'},
  {'name': 'Khqr', 'icon': 'assets/icons/khqr.png'},
  {'name': 'Credit Card', 'icon': 'assets/icons/card.png'},
];

class _CartPaymentViewState extends State<CartPaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Shipping Payment', actionIcon: ''),
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
                        color3: true,
                        line2: true,
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: paymentMethods.length,
                      itemBuilder: (context, index) {
                        return CustomPaymentSelection(
                          namecard: paymentMethods[index]['name']!,
                          image: paymentMethods[index]['icon']!,
                        );
                      },
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 16,
              right: 16,
              child: CustomButton(
                onTap: () => showOrderDialog(),
                imageIconRight: '',
                textButton: 'Make Payment',
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
