import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<dynamic> categories = [
    {'name': 'Vegetables', 'icon': 'assets/icons/categories/Group 242.png'},
    {'name': 'Fruits', 'icon': 'assets/icons/categories/Group 243.png'},
    {'name': 'Beverages', 'icon': 'assets/icons/categories/Group 244.png'},
    {'name': 'Grocery', 'icon': 'assets/icons/categories/Group 245.png'},
    {'name': 'Edible Oil', 'icon': 'assets/icons/categories/Group 246.png'},
    {'name': 'Household', 'icon': 'assets/icons/categories/Group 247.png'},
    {'name': 'Baby Care', 'icon': 'assets/icons/categories/Group 240.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(118),
        child: CustomAppBar(
          title: 'Category',
          actionIcon: 'assets/icons/menu.png',
          onTap: null,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.all(8),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(categories[index]['icon'], height: 60, width: 60),
                SizedBox(height: 11),
                Text(
                  categories[index]['name'],
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: AppColor.textGray,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
