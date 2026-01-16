import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class CustomMyCreditCard extends StatelessWidget {
  final String name;
  final String cardNumber;
  final String expiry;
  final String cvv;
  final String cardImage;
  const CustomMyCreditCard({
    super.key,
    required this.name,
    required this.cardNumber,
    required this.expiry,
    required this.cvv,
    required this.cardImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: AppColor.backgroundWhite,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: AppColor.backgroundSecondary,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                // color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage(cardImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                cardNumber,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  color: AppColor.textGray,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Expiry: $expiry',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'CVV: ***',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/edit_card.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
