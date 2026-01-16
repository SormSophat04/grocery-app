import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class FeaturedProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  final String status;
  final String unit;
  final bool fav;
  const FeaturedProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.status,
    required this.unit,
    required this.fav,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 110,
            // color: Colors.amber,
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  left: 10,
                  right: 10,
                  child: CircleAvatar(
                    radius: 37,
                    backgroundColor: Colors.redAccent.withOpacity(0.1),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    image,
                    height: 60,
                    width: 60,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    child: Image.asset(
                      fav
                          ? 'assets/icons/nav_bar/favorite.png'
                          : 'assets/icons/nav_bar/favorite (1).png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.contain,
                      color: fav
                          ? Colors.redAccent.withOpacity(0.8)
                          : AppColor.textGray,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: status != ''
                      ? Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(0.1),
                          ),
                          child: Text(
                            status,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent.withOpacity(0.5),
                              fontFamily: 'Poppins',
                            ),
                          ),
                        )
                      : SizedBox(),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$$price',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primaryDark,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  unit,
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
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: AppColor.border, width: 1)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/nav_bar/shopping-bag.png',
                  height: 20,
                  width: 20,
                  fit: BoxFit.cover,
                  color: AppColor.primaryDark,
                ),
                const SizedBox(width: 8),
                Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
