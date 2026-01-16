import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_nav_bar.dart';
import 'package:groceries_app/features/presentation/order/view/track_order_view.dart';

void showOrderDialog() {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Modern rounded corners
      ),
      elevation: 0,
      backgroundColor: Colors
          .transparent, // Transparent to let the Container handle the style
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Wrap content height
          children: [
            // 1. Icon / Graphic
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColor.primaryLight,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_circle,
                color: AppColor.primaryDark,
                size: 40,
              ),
            ),
            const SizedBox(height: 20),

            // 2. Title
            const Text(
              "Order Successful!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),

            // 3. Text Body
            const Text(
              "Your order #2034 is successfully placed. You can track the delivery status in the order section.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey, height: 1.5),
            ),
            const SizedBox(height: 25),

            // 4. Buttons (Row for side-by-side)
            Row(
              children: [
                // Button: Back Home
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // Get.back();
                      Get.offAll(() => CustomNavBar());
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Back Home",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
                const SizedBox(width: 15),

                // Button: Track Order
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Get.back();
                      Get.offAll(() => TrackOrderView());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryDark,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text("Track Order"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    barrierDismissible: false, // User must tap a button to close
  );
}
