import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/features/domain/cart_item.dart';
import 'package:groceries_app/features/presentation/cart/controller/cart_controller.dart';

class CustomProductListview extends StatelessWidget {
  final CartItem cartItem;
  final CartController controller = Get.find();

  CustomProductListview({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.25,
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              controller.removeFromCart(cartItem.product);
            },
            backgroundColor: const Color(0xFFEF574B),
            foregroundColor: Colors.white,
            icon: Icons.delete,
          ),
        ],
      ),
      child: Container(
        height: 100,
        width: double.infinity,
        color: AppColor.backgroundWhite,
        padding: EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              child: Stack(
                children: [
                  Positioned(
                    top: 12,
                    left: 8,
                    right: 8,
                    bottom: 18,
                    child: CircleAvatar(
                      radius: 37,
                      backgroundColor: AppColor.primaryLight,
                    ),
                  ),
                  Positioned(
                    top: 28,
                    left: 20,
                    right: 20,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage(cartItem.product.image),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16),
            Container(
              margin: EdgeInsets.symmetric(vertical: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${cartItem.product.price}",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColor.primary,
                    ),
                  ),
                  Text(
                    cartItem.product.name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    cartItem.product.unit,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColor.textGray,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Obx(
              () => Container(
                height: 100,
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.increment(cartItem.product);
                      },
                      child: Icon(
                        Icons.add,
                        size: 24,
                        color: AppColor.primaryDark,
                      ),
                    ),
                    Text(
                      cartItem.quantity.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.decrement(cartItem.product);
                      },
                      child: Icon(
                        Icons.remove,
                        size: 24,
                        color: AppColor.primaryDark,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}