import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/features/presentation/cart/view/cart_view.dart';
import 'package:groceries_app/features/presentation/product/view/review_view.dart';

class ProductDetailView extends StatelessWidget {
  final product = Get.arguments;
  ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 420,
                  width: double.infinity,
                  color: AppColor.backgroundWhite,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -180,
                        left: -40,
                        right: -40,
                        child: CircleAvatar(
                          radius: 300,
                          backgroundColor: AppColor.primaryLight,
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 0,
                        right: 0,
                        child: Image.asset(
                          product['image'],
                          height: 260,
                          width: 260,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\$${product['price']}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColor.primaryDark,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            product['fav']
                                ? 'assets/icons/nav_bar/favorite.png'
                                : 'assets/icons/nav_bar/favorite (1).png',
                            height: 20,
                            width: 20,
                            fit: BoxFit.contain,
                            color: product['fav']
                                ? Colors.redAccent.withOpacity(0.8)
                                : AppColor.textGray,
                          ),
                        ],
                      ),
                      Text(
                        "${product['name']}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "${product['unit']}",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.textGray,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Get.to(() => ReviewView()),
                        child: Row(
                          children: [
                            Text(
                              "${product['rate']}",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(width: 4),
                            for (int i = 1; i < product['rate']; i++)
                              Image.asset(
                                'assets/icons/star.png',
                                height: 14,
                                width: 14,
                                fit: BoxFit.contain,
                              ),
                            SizedBox(width: 4),
                            Text(
                              "(89 Reviews)",
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
                      SizedBox(height: 16),
                      Text(
                        "${product['description']}",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: AppColor.textGray,
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColor.backgroundWhite,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Quantity: ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                color: AppColor.textGray,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.remove,
                                size: 24,
                                color: AppColor.primaryDark,
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color: AppColor.border,
                                    width: 1,
                                  ),
                                  right: BorderSide(
                                    color: AppColor.border,
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Center(child: Text("1")),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.add,
                                size: 24,
                                color: AppColor.primaryDark,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
          Positioned(
            top: 60,
            left: 18,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 16,
            right: 16,
            child: CustomButton(
              onTap: () => Get.to(() => CartView()),
              imageIconRight: 'assets/icons/nav_bar/shopping-bag.png',
              textButton: 'Add to Cart',
              imageIconLeft: '',
              backgroundColor: AppColor.primaryDark,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
