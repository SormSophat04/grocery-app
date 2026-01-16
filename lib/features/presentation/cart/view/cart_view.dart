import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/core/widgets/custom_product_listview.dart';
import 'package:groceries_app/features/presentation/cart/view/cart_method_view.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  List<dynamic> favoritesProducts = [
    {
      "id": 1,
      "name": "Pomegranate",
      "price": "4.99",
      "image": "assets/images/pomegranate-11.png",
      "status": "20% Off",
      "unit": "1kg",
      "fav": true,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      "id": 2,
      "name": "Apple",
      "price": "3.99",
      "image": "assets/images/pineapple-pieces.png",
      "status": "New",
      "unit": "1kg",
      "fav": false,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      "id": 4,
      "name": "Orange",
      "price": "5.49",
      "image": "assets/images/Group 247 (1).png",
      // "status": "5% Off",
      "unit": "1kg",
      "fav": false,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Shopping Cart', actionIcon: ''),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        itemCount: favoritesProducts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: CustomProductListview(
            name: favoritesProducts[index]['name'],
            price: favoritesProducts[index]['price'],
            unit: favoritesProducts[index]['unit'],
            imgage: favoritesProducts[index]['image'],
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
                      Text(
                        "\$59.9",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: AppColor.textGray,
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
                  Text(
                    "\$58.7",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
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
