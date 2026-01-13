import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

List<dynamic> categories = [
  {'name': 'Vegetables', 'icon': 'assets/icons/categories/Group 242.png'},
  {'name': 'Fruits', 'icon': 'assets/icons/categories/Group 243.png'},
  {'name': 'Beverages', 'icon': 'assets/icons/categories/Group 244.png'},
  {'name': 'Grocery', 'icon': 'assets/icons/categories/Group 245.png'},
  {'name': 'Edible Oil', 'icon': 'assets/icons/categories/Group 246.png'},
  {'name': 'Household', 'icon': 'assets/icons/categories/Group 247.png'},
];

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppColor.backgroundSecondary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/search.png',
                    height: 20,
                    width: 20,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 16),
                  const Text(
                    'Search here',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icons/menu.png',
                    height: 20,
                    width: 20,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/banner1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: 280,
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 1.05,
                aspectRatio: 16 / 9,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textBlack,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icons/arrow_right.png',
                    height: 20,
                    width: 20,
                    color: AppColor.textGray,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 90,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 78,
                    // margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          categories[index]['icon'],
                          height: 52,
                          width: 52,
                        ),
                        SizedBox(height: 11),
                        Text(
                          categories[index]['name'],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.textGray,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
