import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_button.dart';
import 'package:groceries_app/features/presentation/product/view/product_view.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Apply Filters', actionIcon: ''),
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            color: AppColor.backgroundWhite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Price Range"),
                SizedBox(height: 14),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor.backgroundSecondary,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Min.',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor.backgroundSecondary,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Max.',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Text("Star Rating"),
                SizedBox(height: 14),
                Row(
                  children: List.generate(5, (index) {
                    return Icon(Icons.star_border, color: Colors.grey);
                  }),
                ),
                SizedBox(height: 14),
                Text("Others"),
                SizedBox(height: 14),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text("Open Now"),
                  ],
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text("Offers Available"),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 16,
            right: 16,
            child: CustomButton(
              imageIconRight: '',
              textButton: "Apply Filters",
              imageIconLeft: '',
              backgroundColor: AppColor.primaryDark,
              textColor: AppColor.backgroundWhite,
              onTap: () => Get.to(() => ProductView()),
            ),
          ),
        ],
      ),
    );
  }
}
