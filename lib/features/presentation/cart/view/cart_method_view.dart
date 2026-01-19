import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/core/widgets/custom_shipping_status.dart';
import 'package:groceries_app/features/presentation/cart/view/cart_address_view.dart';
import 'package:groceries_app/features/presentation/cart/widgets/custom_shipping_method.dart';

class CartMethodView extends StatefulWidget {
  const CartMethodView({super.key});

  @override
  State<CartMethodView> createState() => _CartMethodViewState();
}

List<Map<String, String>> shippingMethods = [
  {
    'title': 'Standard Shipping',
    'description': 'Delivery within 3-5 business days',
    'price': '\$5.00',
  },
  {
    'title': 'Express Shipping',
    'description': 'Delivery within 1-2 business days',
    'price': '\$15.00',
  },
  {
    'title': 'Next-Day Shipping',
    'description': 'Delivery by the next day',
    'price': '\$25.00',
  },
];

class _CartMethodViewState extends State<CartMethodView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Shipping Method', actionIcon: ''),
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
                        color2: false,
                        color3: false,
                        line2: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select Shipping Method',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 16),
                          ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: CustomShippingMethod(
                                  title: shippingMethods[index]['title']!,
                                  description: shippingMethods[index]['description']!,
                                  price: shippingMethods[index]['price']!,
                                ),
                              );
                            },
                            itemCount: shippingMethods.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                          ),
                        ],
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
                onTap: () => Get.to(() => CartAddressView()),
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
