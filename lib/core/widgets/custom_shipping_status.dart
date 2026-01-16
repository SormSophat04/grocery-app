import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class CustomShippingStatus extends StatelessWidget {
  final bool color2;
  final bool color3;
  final bool line2;
  const CustomShippingStatus({
    super.key,
    required this.color2,
    required this.color3,
    required this.line2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: AppColor.primaryDark,
                child: Center(
                  child: color2 == true
                      ? Icon(Icons.done, color: Colors.white, size: 24)
                      : Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "DELIVERY",
                style: TextStyle(
                  color: AppColor.textGray,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          Container(
            width: 70,
            height: 48,
            // color: Colors.amber,
            child: Divider(thickness: 2, color: AppColor.primaryDark),
          ),

          Column(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: color2 ? AppColor.primaryDark : Colors.white,
                child: Center(
                  child: color3 == true
                      ? Icon(Icons.done, color: Colors.white, size: 24)
                      : Text(
                          "2",
                          style: TextStyle(
                            color: color2 == false
                                ? AppColor.textGray
                                : Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "ADDRESS",
                style: TextStyle(
                  color: AppColor.textGray,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          Container(
            width: 70,
            height: 48,
            // color: Colors.amber,
            child: Divider(
              thickness: 2,
              color: line2 ? AppColor.primaryDark : AppColor.textGray,
            ),
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: color3 ? AppColor.primaryDark : Colors.white,
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                      color: color3 == false ? AppColor.textGray : Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "PAYMENT",
                style: TextStyle(
                  color: AppColor.textGray,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
