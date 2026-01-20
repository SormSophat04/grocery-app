import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/core/widgets/custom_product_listview.dart';
import 'package:groceries_app/features/presentation/cart/controller/cart_controller.dart';
import 'package:groceries_app/features/presentation/cart/view/cart_method_view.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Shopping Cart', actionIcon: ''),
      ),
      body: Obx(
        () => ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          itemCount: controller.cartItems.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CustomProductListview(
              cartItem: controller.cartItems[index],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 200,
        width: double.infinity,
        color: AppColor.backgroundWhite,
        child: Column(
          children: [
            SizedBox(height: 16),
            Container(
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: AppColor.textGray,
                        ),
                      ),
                      Spacer(),
                      Obx(
                        () => Text(
                          "\$${controller.cartItems.fold<double>(0, (sum, item) => sum + (double.parse(item.product.price) * item.quantity.value)).toStringAsFixed(2)}",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: AppColor.textGray,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Shipping charges",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: AppColor.textGray,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$1.2",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: AppColor.textGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Spacer(),
                  Obx(
                    () => Text(
                      "\$${(controller.cartItems.fold<double>(0, (sum, item) => sum + (double.parse(item.product.price) * item.quantity.value)) + 1.2).toStringAsFixed(2)}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(
                onTap: () => Get.to(() => CartMethodView()),
                child: CustomButton(
                  imageIconRight: "",
                  textButton: "Checkout",
                  imageIconLeft: "",
                  backgroundColor: AppColor.primaryDark,
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
