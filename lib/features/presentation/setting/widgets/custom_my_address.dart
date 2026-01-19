import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class CustomMyAddress extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String address;
  final String cardImage;
  final String actionIcon;
  const CustomMyAddress({
    super.key,
    required this.name,
    required this.cardImage,
    required this.phoneNumber,
    required this.address,
    required this.actionIcon,
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
            radius: 30,
            backgroundColor: AppColor.backgroundEnd,
            child: Container(
              height: 35,
              width: 35,
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
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
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
                  phoneNumber,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  address,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    color: AppColor.textGray,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 26,
            width: 26,
            decoration: actionIcon == ''
                ? null
                : BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(actionIcon),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
