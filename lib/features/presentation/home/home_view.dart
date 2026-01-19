import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_grid_view.dart';
import 'package:groceries_app/features/presentation/category/category_view.dart';
import 'package:groceries_app/features/presentation/home/search_view.dart';
import 'package:groceries_app/features/presentation/product/view/product_view.dart';

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

List<dynamic> featuredProducts = [
  {
    "id": 1,
    "name": "Pomegranate",
    "price": "4.99",
    "image": "assets/images/pomegranate-11.png",
    "status": "20% Off",
    "unit": "1kg",
    "fav": true,
    "rate": 4.5,
    "description":
        "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
  },
  {
    "id": 2,
    "name": "Apple",
    "price": "3.99",
    "image": "assets/images/pineapple-pieces.png",
    "status": "New",
    "unit": "1kg",
    "fav": false,
    "rate": 4.5,
    "description":
        "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
  },
  {
    "id": 3,
    "name": "Banana",
    "price": "2.99",
    "image": "assets/images/grapes-31.png",
    "status": "15% Off",
    "unit": "1kg",
    "fav": true,
    "rate": 4.5,
    "description":
        "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
  },
  {
    "id": 4,
    "name": "Orange",
    "price": "5.49",
    "image": "assets/images/Group 247 (1).png",
    // "status": "5% Off",
    "unit": "1kg",
    "fav": false,
    "rate": 4.5,
    "description":
        "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
  },
  {
    "id": 5,
    "name": "Avocado",
    "price": "6.99",
    "image": "assets/images/aocado-2 1.png",
    "status": "25% Off",
    "unit": "1kg",
    "fav": true,
    "rate": 4.5,
    "description":
        "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
  },
  {
    "id": 6,
    "name": "Strawberry",
    "price": "7.99",
    "image": "assets/images/peach-24 1.png",
    "status": "New",
    "unit": "1kg",
    "fav": false,
    "rate": 4.5,
    "description":
        "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
  },
];

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: GestureDetector(
          onTap: () => Get.to(() => SearchView()),
          child: Container(
            height: 60,
            width: double.infinity,
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 40,
              bottom: 10,
            ),
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
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
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

              // Categories header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GestureDetector(
                  onTap: () => Get.to(() => CategoryView()),
                  child: Row(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 18,
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
              ),
              const SizedBox(height: 20),

              // Categories Section
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
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: AppColor.textGray,
                              fontFamily: 'Poppins',
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              //Featured Products Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GestureDetector(
                  onTap: () => Get.to(() => ProductView()),
                  child: Row(
                    children: [
                      Text(
                        'Featured Products',
                        style: TextStyle(
                          fontSize: 18,
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
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomGridView(featuredProducts: featuredProducts),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
