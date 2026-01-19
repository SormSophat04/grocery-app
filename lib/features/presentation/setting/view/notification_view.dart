import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/features/presentation/setting/widgets/custom_item_notification.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  List<Map<String, dynamic>> notifications = [
    {
      'title': 'Order Updates',
      'description': 'Get notified about your order status and updates.',
      'isEnabled': true,
    },
    {
      'title': 'Promotions',
      'description': 'Receive special offers and promotions.',
      'isEnabled': false,
    },
    {
      'title': 'New Arrivals',
      'description': 'Stay informed about new products in our store.',
      'isEnabled': true,
    },
    {
      'title': 'Delivery Notifications',
      'description': 'Get alerts when your delivery is on the way.',
      'isEnabled': false,
    },
    {
      'title': 'Feedback Requests',
      'description': 'Help us improve by providing your feedback.',
      'isEnabled': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: "Notification", actionIcon: ""),
      ),
      body: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            itemCount: notifications.length,
            itemBuilder: (context, index) => CustomItemNotification(
              title: notifications[index]['title']!,
              description: notifications[index]['description']!,
              isEnabled: notifications[index]['isEnabled']!,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 16,
            left: 16,
            child: CustomButton(
              imageIconRight: '',
              textButton: 'Save Changes',
              imageIconLeft: '',
              backgroundColor: AppColor.primary,
              textColor: AppColor.backgroundWhite,
            ),
          ),
        ],
      ),
    );
  }
}
