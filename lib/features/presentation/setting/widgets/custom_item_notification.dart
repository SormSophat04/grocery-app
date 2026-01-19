import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class CustomItemNotification extends StatelessWidget {
  final String title;
  final String description;
  final bool isEnabled;
  const CustomItemNotification({
    super.key,
    required this.title,
    required this.description,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: AppColor.backgroundWhite,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 200,
            // color: Colors.amberAccent,
            // padding: EdgeInsets.symmetric(horizontal: 17, vertical: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            height: 50,
            // color: Colors.amber,
            child: Switch(
              value: isEnabled,
              onChanged: (value) {},
              activeColor: AppColor.primary,
            ),
          ),
        ],
      ),
    );
  }
}