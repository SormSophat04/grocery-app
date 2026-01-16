import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class FeaturedProductCard extends StatefulWidget {
  final String name;
  final String price;
  final String image;
  final String status;
  final String unit;
  final bool fav;
  final Function()? onTapDetail;
  final Function()? onTapAddToCart;
  const FeaturedProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.status,
    required this.unit,
    required this.fav,
    this.onTapDetail,
    this.onTapAddToCart,
  });

  @override
  State<FeaturedProductCard> createState() => _FeaturedProductCardState();
}

class _FeaturedProductCardState extends State<FeaturedProductCard> {
  int quantity = 0;

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
        children: [
          GestureDetector(
            onTap: widget.onTapDetail,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 110,
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
                            widget.image,
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
                              widget.fav
                                  ? 'assets/icons/nav_bar/favorite.png'
                                  : 'assets/icons/nav_bar/favorite (1).png',
                              height: 20,
                              width: 20,
                              fit: BoxFit.contain,
                              color: widget.fav
                                  ? Colors.redAccent.withOpacity(0.8)
                                  : AppColor.textGray,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: widget.status != ''
                              ? Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    widget.status,
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
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$${widget.price}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryDark,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          widget.name,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          widget.unit,
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
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: AppColor.border, width: 1)),
            ),
            // CONDITIONAL RENDERING STARTS HERE
            child: quantity == 0
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        quantity = 1; // Set to 1 to trigger the UI change
                      });
                    },
                    behavior: HitTestBehavior
                        .opaque, // Ensures the whole area is clickable
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
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor
                                .primaryDark, // Ensure text matches icon
                          ),
                        ),
                      ],
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // DECREMENT BUTTON (-)
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              if (quantity > 0) quantity--;
                            });
                          },
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              size: 20,
                              color: AppColor.primaryDark,
                            ),
                          ),
                        ),
                      ),

                      // QUANTITY TEXT
                      Text(
                        '$quantity',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // INCREMENT BUTTON (+)
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: AppColor.primaryDark,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
